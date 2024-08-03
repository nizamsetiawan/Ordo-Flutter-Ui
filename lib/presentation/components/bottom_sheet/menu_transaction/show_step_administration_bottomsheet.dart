import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../app_bottom_sheet.dart';
import 'widgets/bottom_sheet_card.dart';

Future<void> showStepAdministrationBottomsheet(BuildContext context) {
  final listItems = [
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'SPS',
      icon: Assets.icons.icRulerAndPenBold.svg(),
      showBadge: true,
      contentBadge: '!',
      isGreyOut: false,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'SPR',
      icon: Assets.icons.icEdit2Bold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'PPJB',
      icon: Assets.icons.icDocumentTextBold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Daftar',
      subtitle: 'Dokumen',
      icon: Assets.icons.icNote2Bold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Tahap',
      subtitle: 'SP3K',
      icon: Assets.icons.icArchiveBookBold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Bayar',
      subtitle: 'angsuran',
      icon: Assets.icons.icReceiptTextBold.svg(),
    ),
  ];

  return showAppBottomSheet(
    context,
    title: 'Tahap Administrasi',
    subtitle: 'Daftar menu tahap administrasi',
    child: Wrap(
      spacing: 15,
      runSpacing: 15,
      children: listItems,
    ),
  );
}
