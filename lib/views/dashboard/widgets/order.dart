import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordo_flutter/app/order/loader/order_loader_bloc.dart';
import 'package:ordo_flutter/presentation/components/button/app_elevated_button.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';
import 'package:ordo_flutter/presentation/components/styles/typography.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'order_card.dart';
import 'order_timeline.dart';

class HomeOrderSection extends StatefulWidget {
  const HomeOrderSection({super.key});

  @override
  State<HomeOrderSection> createState() => _HomeOrderSectionState();
}

class _HomeOrderSectionState extends State<HomeOrderSection> {
  final controllerOne = PageController();
  final controllerTwo = PageController();

  int activeIndex = 0;

  @override
  void dispose() {
    controllerOne.dispose();
    controllerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pesanan Terbaru',
                      style: AppTypography(context).outfit18_500,
                    ),
                    Text(
                      'Daftar pesanan terbaru anda',
                      style: AppTypography(context)
                          .outfit12_400
                          .copyWith(color: const Color(0xFF9E9E9E)),
                    ),
                  ],
                ),
                BlocBuilder<OrderLoaderBloc, OrderLoaderState>(
                  buildWhen: (p, c) => p.orders != c.orders,
                  builder: (context, state) {
                    return Visibility(
                      visible: state.orders.isNotEmpty,
                      child: Assets.icons.icRightFilled.svg(
                        colorFilter: const ColorFilter.mode(
                          ColorName.baseDark,
                          BlendMode.srcIn,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          BlocBuilder<OrderLoaderBloc, OrderLoaderState>(
            builder: (context, state) {
              if (state.loadInProgress) {
                return _buildOrderLoading();
              }

              if (state.orders.isEmpty) {
                return _buildEmptyOrder(context);
              }

              return state.failureOption.fold(
                () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ExpandablePageView.builder(
                      controller: controllerOne,
                      itemCount: state.orders.length,
                      itemBuilder: (context, index) {
                        return const OrderTimeline();
                      },
                      onPageChanged: (value) => setState(() {
                        activeIndex = value;
                        controllerTwo.jumpToPage(value);
                      }),
                    ),
                    const SizedBox(height: 10),
                    ExpandablePageView.builder(
                      controller: controllerTwo,
                      onPageChanged: (value) => setState(() {
                        activeIndex = value;
                        controllerOne.jumpToPage(value);
                      }),
                      itemCount: state.orders.length,
                      itemBuilder: (context, index) {
                        final order = state.orders[index];

                        return OrderCard(order: order);
                      },
                    ),
                    const SizedBox(height: 10),
                    AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: state.orders.length,
                      effect: const WormEffect(
                        dotHeight: 3,
                        dotWidth: 19,
                        activeDotColor: ColorName.baseDark,
                        dotColor: ColorName.gray100,
                      ),
                    ),
                  ],
                ),
                (f) => f.map(
                  unexpectedError: (_) => const Text('Unexpected error.'),
                  emptyList: (_) => _buildEmptyOrder(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyOrder(BuildContext context) => Column(
        children: [
          Assets.images.imgEmptyOrder.svg(),
          const SizedBox(height: 20),
          Text(
            'Pesanan Kosong',
            style: AppTypography(context).outfit16_600,
          ),
          Text(
            'Ayo tambahkan pesanan baru',
            style: AppTypography(context)
                .outfit12_400
                .copyWith(color: ColorName.gray200),
          ),
          const SizedBox(height: 10),
          AppElevatedButton(
            onPressed: () => context
                .read<OrderLoaderBloc>()
                .add(const OrderLoaderEvent.fetched()),
            width: 220,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.icSearchBroken.svg(),
                const SizedBox(width: 10),
                const Text('Eksplor Properti'),
              ],
            ),
          )
        ],
      );

  Widget _buildOrderLoading() => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          height: 144,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
        ),
      );
}
