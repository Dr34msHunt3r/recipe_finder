import 'package:flutter/material.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {required this.child,
      this.withTopPadding = true,
      this.withBottomPadding = true,
      this.customPadding,
      Key? key})
      : super(key: key);

  final Widget child;
  final EdgeInsets? customPadding;
  final bool withTopPadding;
  final bool withBottomPadding;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColors.backgroundGradientStart,
                AppColors.backgroundGradientStop
              ])),
          child: SafeArea(
            child: Padding(
              padding: _getPadding(),
              child: child,
            ),
          ),
        ),
      );

  EdgeInsets _getPadding() {
    if (customPadding != null) return customPadding!;
    return EdgeInsets.only(
      top: withTopPadding ? AppDimens.largeSpace_16 : AppDimens.noSpace_0,
      bottom: withBottomPadding ? AppDimens.largeSpace_16 : AppDimens.noSpace_0,
      left: AppDimens.largeSpace_16,
      right: AppDimens.largeSpace_16,
    );
  }
}
