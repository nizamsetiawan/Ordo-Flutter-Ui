import 'package:auto_route/auto_route.dart';
import 'package:ordo_flutter/views/checkout/checkout_page.dart';

import '../../views/dashboard/dashboard_page.dart';
import '../../views/inventory/inventory_page.dart';
import '../../views/main_page.dart';
import '../../views/shoppingcart/shoppingcart_page.dart';
import '../../views/userprofile/userprofile_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        /// MAIN PAGE
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(page: DashboardRoute.page, initial: true),
            AutoRoute(page: InventoryRoute.page),
            AutoRoute(page: CheckoutRoute.page),
            AutoRoute(page: ShoppingcartRoute.page),
            AutoRoute(page: UserprofileRoute.page),
          ],
        ),
      ];
}
