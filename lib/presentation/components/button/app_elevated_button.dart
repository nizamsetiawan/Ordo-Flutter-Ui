import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../styles/typography.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
  });

  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              onPressed?.call();
            }
          : null,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.pressed)
              ? ColorName.gray200.withOpacity(0.1)
              : null;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return ColorName.baseDark;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return ColorName.baseWhite;
        }),
        fixedSize:
            MaterialStateProperty.all(Size(width ?? double.maxFinite, 59)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(39)),
        ),
        textStyle: MaterialStateProperty.all(
          AppTypography(context)
              .outfit16_500
              .copyWith(color: ColorName.baseWhite),
        ),
      ),
      child: child,
    );
  }
}
