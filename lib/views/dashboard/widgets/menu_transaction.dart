import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ordo_flutter/app/order/loader/order_loader_bloc.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';
import 'package:ordo_flutter/presentation/components/styles/typography.dart';

import 'menu_card.dart';

class HomeMenuTransactionSection extends StatelessWidget {
  const HomeMenuTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderLoaderBloc, OrderLoaderState>(
      builder: (context, state) {
        return Visibility(
          visible: state.orders.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Menu',
                          style: AppTypography(context).outfit18_500,
                        ),
                        Text(
                          'Daftar menu transaksi',
                          style: AppTypography(context).outfit12_400,
                        ),
                      ],
                    ),
                    Assets.icons.icCategoryTwoTone.svg(
                      colorFilter: const ColorFilter.mode(
                        ColorName.baseDark,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) =>
                      MenuCardTransaction(index: index),
                  itemCount: 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
