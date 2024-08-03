import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ordo_flutter/presentation/components/gen/assets.gen.dart';
import 'package:ordo_flutter/presentation/components/gen/colors.gen.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            backgroundColor: ColorName.baseWhite,
            items: _listItems(),
          ),
          AnimatedPositioned(
            bottom: 0,
            left: constraints.maxWidth /
                    5 *
                    (tabsRouter.activeIndex) + // space of current index
                (constraints.maxWidth / 10) - // minimize the half of it
                30, // minimize the width of dash
            duration: const Duration(milliseconds: 100),
            child: Assets.icons.icIndicatorBarItem.svg(),
          ),
        ],
      ),
    );
  }

  List<BottomNavigationBarItem> _listItems() => [
        BottomNavigationBarItem(
          icon: Assets.icons.icHomeBroken.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.gray200,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Assets.icons.icHomeFilled.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.baseDark,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Assets.icons.icBuildingBroken.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.gray200,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Assets.icons.icBuildingFilled.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.baseDark,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Assets.icons.icDocumentBroken.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.gray200,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Assets.icons.icDocumentFilled.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.baseDark,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Assets.icons.icCartBroken.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.gray200,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Assets.icons.icCartFilled.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.baseDark,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Assets.icons.icUserBroken.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.gray200,
              BlendMode.srcIn,
            ),
          ),
          activeIcon: Assets.icons.icUserFilled.svg(
            colorFilter: const ColorFilter.mode(
              ColorName.baseDark,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        ),
      ];
}
