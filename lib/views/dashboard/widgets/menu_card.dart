import 'package:flutter/material.dart';
import 'package:ordo_flutter/presentation/components/bottom_sheet/menu_transaction/show_step_building_bottomsheet.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';
import 'package:ordo_flutter/presentation/components/styles/typography.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../presentation/components/bottom_sheet/menu_transaction/show_step_administration_bottomsheet.dart';
import '../../../presentation/components/bottom_sheet/menu_transaction/show_step_order_bottomsheet.dart';
import '../../../presentation/components/bottom_sheet/menu_transaction/show_step_receive_bottomsheet.dart';

class MenuCardTransaction extends StatelessWidget {
  MenuCardTransaction({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => switch (index) {
        0 => showStepOrderBottomsheet(context),
        1 => showStepAdministrationBottomsheet(context),
        2 => showStepbuildingBottomsheet(context),
        3 => showStepReceiveBottomsheet(context),
        _ => {},
      },
      child: Container(
        height: 174,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: index == 0 ? ColorName.baseDark : ColorName.baseWhite,
          boxShadow: index == 0
              ? [
                  BoxShadow(
                    color: const Color(0xFF3F3F3F).withOpacity(0.05),
                    blurRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: const Color(0xFF3F3F3F).withOpacity(0.07),
                    blurRadius: 6,
                    offset: const Offset(0, 10),
                  ),
                  BoxShadow(
                    color: const Color(0xFF3F3F3F).withOpacity(0.09),
                    blurRadius: 12,
                    offset: const Offset(0, 21),
                  ),
                  BoxShadow(
                    color: const Color(0xFF3F3F3F).withOpacity(0.11),
                    blurRadius: 26,
                    offset: const Offset(0, 43),
                  ),
                  BoxShadow(
                    color: const Color(0xFF3F3F3F).withOpacity(0.17),
                    blurRadius: 72,
                    offset: const Offset(0, 120),
                  ),
                ]
              : [
                  BoxShadow(
                    color: const Color(0xFFAAA7A7).withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 14),
                  ),
                  BoxShadow(
                    color: const Color(0xFFAAA7A7).withOpacity(0.08),
                    blurRadius: 17,
                    offset: const Offset(0, 47),
                  ),
                  BoxShadow(
                    color: const Color(0xFFAAA7A7).withOpacity(0.14),
                    blurRadius: 80,
                    offset: const Offset(0, 212),
                  ),
                ],
        ),
        child: Stack(
          children: [
            index == 0
                ? Positioned(
                    right: -20,
                    child: Assets.images.ellipseDarkGreen.svg(),
                  )
                : Positioned(
                    bottom: 0,
                    child: Assets.images.ellipseGray.svg(),
                  ),
            Positioned(
              bottom: 0,
              right: index == 3 ? 18 : 0,
              child: _imageCard[index],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tahap',
                    style: AppTypography(context).lexend12_300.copyWith(
                          color: index == 0 ? ColorName.baseWhite : null,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _titleCard[index],
                    style: AppTypography(context).lexend14_500.copyWith(
                          color: index == 0 ? ColorName.baseWhite : null,
                        ),
                  ),
                  const Spacer(),
                  _listPercentage(context, index: index)[index],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final _titleCard = <String>[
    'Pemesanan',
    'Administrasi',
    'Pembangunan',
    'Akad & Serah Terima',
  ];

  final _imageCard = <Widget>[
    Assets.images.imgHouse.image(),
    Assets.images.imgBinder.image(),
    Assets.images.imgHouseYellow.image(),
    Assets.images.imgDoor.image(),
  ];

  List<Widget> _listPercentage(
    BuildContext context, {
    required int index,
  }) =>
      [
        _buildPercentage(
          context,
          index: index,
          percent: 1,
          textPercent: '100',
        ),
        _buildPercentage(
          context,
          index: index,
          percent: 0.5,
          textPercent: '50',
          colorPercent: ColorName.baseDark,
        ),
        _buildPercentage(
          context,
          index: index,
          percent: 0,
          textPercent: '0',
        ),
        _buildPercentage(
          context,
          index: index,
          percent: 0,
          textPercent: '0',
        ),
      ];

  Widget _buildPercentage(
    BuildContext context, {
    required int index,
    required double percent,
    required String textPercent,
    Color? colorPercent,
  }) =>
      CircularPercentIndicator(
        radius: 19,
        animation: true,
        percent: percent,
        progressColor: colorPercent ?? ColorName.baseRed,
        backgroundColor: ColorName.gray400,
        center: RichText(
          text: TextSpan(
            text: textPercent,
            style: AppTypography(context)
                .rubik12_600
                .copyWith(color: index == 0 ? ColorName.baseWhite : null),
            children: [
              TextSpan(
                text: '%',
                style: AppTypography(context)
                    .rubik5_500
                    .copyWith(color: index == 0 ? ColorName.baseWhite : null),
              ),
            ],
          ),
        ),
      );
}
