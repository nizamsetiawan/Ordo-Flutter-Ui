import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../styles/typography.dart';

class MenuTransactionItemBottomSheetCard extends StatelessWidget {
  const MenuTransactionItemBottomSheetCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.showBadge = false,
    this.contentBadge,
    this.isGreyOut = true,
    this.isPercentage = false,
  });

  final String title;
  final String subtitle;
  final Widget icon;
  final bool showBadge;
  final String? contentBadge;
  final bool isGreyOut;
  final bool isPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: ColorName.baseWhite,
      ),
      child: Stack(
        children: [
          Assets.images.ellipseGrayItem.svg(),
          _buildIcon(context),
          Positioned(
            bottom: 0,
            child: _buildTitleAndSubtile(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTitleAndSubtile(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography(context).lexend10_300,
            ),
            Text(
              subtitle,
              style: AppTypography(context).lexend10_500,
            )
          ],
        ),
      );

  Widget _buildIcon(BuildContext context) => isPercentage
      ? icon
      : Padding(
          padding: const EdgeInsets.all(15),
          child: badge.Badge(
            showBadge: showBadge,
            badgeContent: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 2,
              ),
              child: Text(
                contentBadge ?? '',
                style: AppTypography(context)
                    .outfit10_500
                    .copyWith(color: ColorName.baseWhite),
              ),
            ),
            child: Container(
              height: 35,
              width: 35,
              padding: const EdgeInsets.all(7.5),
              foregroundDecoration: BoxDecoration(
                color: isGreyOut ? ColorName.gray100.withOpacity(0.5) : null,
                shape: BoxShape.circle,
              ),
              decoration: BoxDecoration(
                color: ColorName.baseDark,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFEAE6E6).withOpacity(0.73),
                    blurRadius: 4,
                    offset: const Offset(0, 6.2),
                  )
                ],
              ),
              child: icon,
            ),
          ),
        );
}
