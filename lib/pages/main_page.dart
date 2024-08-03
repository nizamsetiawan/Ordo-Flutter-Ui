import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordo_flutter/pages/bottom_nav_bar.dart';
import 'package:ordo_flutter/presentation/routes/app_router.dart';

// import '../../../application/order/loader/order_loader_bloc.dart';
// import '../../../application/promo/loader/promo_loader_bloc.dart';
import '../../../injection.dart';
import '../app/order/loader/order_loader_bloc.dart';
import '../app/promo/loader/promo_loader_bloc.dart';
// import '../../routes/app_router.dart';
// import 'pages/widgets/bottom_nav_bar.dart';

@RoutePage()
class MainPage extends StatelessWidget implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        DashboardRoute(),
        CheckoutRoute(),
        InventoryRoute(),
        ShoppingcartRoute(),
        UserprofileRoute()
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: AppBottomNavBar(
            tabsRouter: tabsRouter,
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<PromoLoaderBloc>()
              ..add(
                const PromoLoaderEvent.fetched(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<OrderLoaderBloc>()
              ..add(
                const OrderLoaderEvent.fetched(showEmptyOrders: true),
              ),
          ),
        ],
        child: this,
      );
}
