import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ordo_flutter/views/dashboard/widgets/header.dart';
import 'package:ordo_flutter/views/dashboard/widgets/menu_transaction.dart';
import 'package:ordo_flutter/views/dashboard/widgets/order.dart';
import 'package:ordo_flutter/views/dashboard/widgets/promo.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeHeaderSection(),
            HomePromoSection(),
            HomeOrderSection(),
            HomeMenuTransactionSection(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
