import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';

import '../../../presentation/components/gen/assets.gen.dart';
import '../../../presentation/components/gen/colors.gen.dart';
import '../../../presentation/components/styles/typography.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorName.baseWhite,
              image: DecorationImage(
                image: Assets.images.imgAvatar.provider(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Temukan\nhunian impian',
                style: AppTypography(context).outfit18_600,
              ),
              Text(
                'Agen Properti Terbaik',
                style: AppTypography(context)
                    .outfit12_400
                    .copyWith(color: const Color(0xFF7E7E7E)),
              ),
            ],
          ),
          const Spacer(),
          badge.Badge(
            badgeContent: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 2,
              ),
              child: Text(
                '3',
                style: AppTypography(context)
                    .outfit10_500
                    .copyWith(color: ColorName.baseWhite),
              ),
            ),
            badgeStyle: const badge.BadgeStyle(
              badgeColor: ColorName.baseRed,
            ),
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorName.baseWhite,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFC5D1C6).withOpacity(0.16),
                    blurRadius: 11,
                    offset: const Offset(0, 5),
                  )
                ],
              ),
              child: Assets.icons.icBellFilled.svg(
                colorFilter: const ColorFilter.mode(
                  ColorName.baseDark,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
