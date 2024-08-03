import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../gen/colors.gen.dart';
import '../../styles/typography.dart';
import '../app_bottom_sheet.dart';
import 'widgets/bottom_sheet_card.dart';

Future<void> showStepbuildingBottomsheet(BuildContext context) {
  Widget buildPercentage({
    required double percent,
    required String textPercent,
  }) =>
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: ColorName.baseDark,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF09130A).withOpacity(0.16),
                blurRadius: 2.5,
                offset: const Offset(0, 5),
              )
            ],
          ),
          child: CircularPercentIndicator(
            radius: 18,
            animation: true,
            percent: percent,
            progressColor: ColorName.baseRed,
            backgroundColor: ColorName.baseWhite,
            // fillColor: ColorName.baseDark,
            center: RichText(
              text: TextSpan(
                text: textPercent,
                style: AppTypography(context)
                    .rubik12_600
                    .copyWith(color: ColorName.baseWhite),
                children: [
                  TextSpan(
                    text: '%',
                    style: AppTypography(context)
                        .rubik5_500
                        .copyWith(color: ColorName.baseWhite),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  final listItems = [
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Persiapan',
      icon: buildPercentage(percent: 1, textPercent: '100'),
      isGreyOut: false,
      isPercentage: true,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Pondasi & Struktur',
      icon: buildPercentage(percent: 0.2, textPercent: '20'),
      isGreyOut: false,
      isPercentage: true,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Rumah Unfinished',
      icon: buildPercentage(percent: 0.3, textPercent: '30'),
      isGreyOut: false,
      isPercentage: true,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Finishing & Interior',
      icon: buildPercentage(percent: 0.4, textPercent: '40'),
      isGreyOut: false,
      isPercentage: true,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Pembersihan',
      icon: buildPercentage(percent: 0, textPercent: '0'),
      isGreyOut: false,
      isPercentage: true,
    ),
  ];

  return showAppBottomSheet(
    context,
    title: 'Tahap Pembangunan',
    subtitle: 'Daftar menu tahap pembangunan rumah',
    child: Wrap(
      spacing: 15,
      runSpacing: 15,
      children: listItems,
    ),
  );
}
