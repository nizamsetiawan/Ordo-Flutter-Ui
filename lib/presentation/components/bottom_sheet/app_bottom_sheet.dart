import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../styles/typography.dart';

Future<void> showAppBottomSheet(
  BuildContext context, {
  required String title,
  required String subtitle,
  required Widget child,
}) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    isScrollControlled: true,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              color: ColorName.baseWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorName.gray100,
                  ),
                ),
                Text(
                  title,
                  style: AppTypography(context).outfit18_500,
                ),
                Text(
                  subtitle,
                  style: AppTypography(context).outfit12_400,
                ),
                const Divider(),
                child,
              ],
            ),
          )
        ],
      );
    },
  );
}
