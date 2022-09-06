import 'package:flutter/material.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';

class CustomizedAppbar extends StatelessWidget {
  const CustomizedAppbar({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: AppDimens.hugerSpace_56,
        child: AppBar(
          centerTitle: true,
          title: Text(
            title,
          ),
          titleTextStyle: const TextStyle(
              color: AppColors.primaryText,
              fontSize: AppDimens.bigTextSize_20,
              fontWeight: FontWeight.w600),
          backgroundColor: AppColors.backgroundGradientStart,
          iconTheme: const IconThemeData(color: AppColors.primaryText),
        ),
      );
}
