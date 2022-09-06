import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/appbar.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseScreen(
        customPadding: EdgeInsets.zero,
        withMainNavigation: true,
        child: Column(
          children: [
            CustomizedAppbar(
              title: context.localizations.settings,
            ),
            _Body(),
          ],
        ),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: [
          _settingsItem(
            context.localizations.cameraPermission,
            const Icon(
              Icons.camera_alt,
              color: AppColors.paleOrange,
            ),
          ),
        ],
      );

  Widget _settingsItem(String optionTitle, Icon icon) => Padding(
        padding: const EdgeInsets.only(
          left: AppDimens.mediumSpace_8,
          top: AppDimens.mediumSpace_8,
          right: AppDimens.mediumSpace_8,
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: AppDimens.mediumSpace_8,
            ),
            Text(
              optionTitle,
              style: const TextStyle(
                color: AppColors.primaryText,
                fontSize: AppDimens.normalTextSize_16,
              ),
            ),
            const Spacer(),
            const Switch.adaptive(
              value: false,
              onChanged: null,
            ),
          ],
        ),
      );
}
