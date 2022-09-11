import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/appbar.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart';
import 'package:recipe_finder/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SettingsCubit>()..init(),
        child: const SettingsView(),
      );
}

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) =>
      BlocConsumer<SettingsCubit, SettingsState>(
        listener: (_, state) => state.maybeWhen(
          orElse: () => null,
          permissionGranted: () => context.read<ScannerCubit>().init(),
        ),
        buildWhen: (_, state) => state is SettingsBuilderState,
        builder: (_, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          requestPermission: (value) => Column(
            children: [
              SettingsToggleButtonItem(
                permissionStatus: value,
                optionTitle: context.localizations.cameraPermission,
                icon: const Icon(
                  Icons.camera_alt,
                  color: AppColors.paleOrange,
                ),
                onChanged: (value) =>
                    context.read<SettingsCubit>().requestPermission(),
              ),
            ],
          ),
        ),
      );
}

class SettingsToggleButtonItem extends StatelessWidget {
  const SettingsToggleButtonItem(
      {required this.permissionStatus,
      required this.optionTitle,
      required this.icon,
      required this.onChanged,
      Key? key})
      : super(key: key);

  final bool permissionStatus;
  final String optionTitle;
  final Icon icon;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) => Padding(
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
            Switch.adaptive(
              value: permissionStatus,
              onChanged: onChanged,
            ),
          ],
        ),
      );
}
