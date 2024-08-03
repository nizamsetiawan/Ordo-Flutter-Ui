import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../app_bottom_sheet.dart';
import 'widgets/bottom_sheet_card.dart';

Future<void> showStepReceiveBottomsheet(BuildContext context) {
  final listItems = [
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Akad',
      icon: Assets.icons.icHandshakeSimpleSolid.svg(),
      showBadge: true,
      contentBadge: '!',
      isGreyOut: false,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Serah Terima\nbangunan',
      icon: Assets.icons.icKeyBold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'Serah Terima\nLegalitas',
      icon: Assets.icons.icJudgeBold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Daftar',
      subtitle: 'Komplain',
      icon: Assets.icons.icDangerFilled.svg(),
    ),
  ];

  return showAppBottomSheet(
    context,
    title: 'Tahap akad & Serah Terima',
    subtitle: 'Daftar menu tahap akad & serah terima',
    child: Wrap(
      spacing: 15,
      runSpacing: 15,
      children: listItems,
    ),
  );
}
