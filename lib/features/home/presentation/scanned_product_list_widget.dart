import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/custom_scroll_behavior.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';

class ScannedProductListWidget extends StatelessWidget {
  const ScannedProductListWidget({super.key});

  @override
  Widget build(BuildContext context) => const ScannedProductListView();
}

class ScannedProductListView extends StatelessWidget {
  const ScannedProductListView({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: AppDimens.subLargerSpace_20,
        ),
        child: SizedBox(
          width: 200,
          height: 150,
          child: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  Text(
                    'Item No. 1',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item No. 2',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item No. 3',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item No. 4',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item No. 5',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item No. 6',
                    style: TextStyle(
                      fontSize: AppDimens.normalTextSize_16,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
