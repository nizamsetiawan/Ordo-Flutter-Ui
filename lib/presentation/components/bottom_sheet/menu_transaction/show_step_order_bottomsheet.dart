import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../app_bottom_sheet.dart';
import 'widgets/bottom_sheet_card.dart';

Future<void> showStepOrderBottomsheet(BuildContext context) {
  final listItems = [
    MenuTransactionItemBottomSheetCard(
      title: 'Booking',
      subtitle: 'Fee',
      icon: Assets.icons.icMoneyReciveBold.svg(),
      showBadge: true,
      contentBadge: '3',
      isGreyOut: false,
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Pesanan',
      subtitle: 'Belum Bayar',
      icon: Assets.icons.icEmptyWalletTimeBold.svg(),
    ),
    MenuTransactionItemBottomSheetCard(
      title: 'Riwayat',
      subtitle: 'Pemesanan',
      icon: Assets.icons.icNoteFavoriteBold.svg(),
    ),
  ];

  return showAppBottomSheet(
    context,
    title: 'Tahap Pemesanan',
    subtitle: 'Daftar menu tahap pemesanan',
    child: Wrap(
      spacing: 15,
      runSpacing: 15,
      children: listItems,
    ),
  );
}
