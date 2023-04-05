import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/appbar.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/features/settings/presentation/cubit/settings_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

@RoutePage()
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
          BlocBuilder<SettingsCubit, SettingsState>(
            builder: (_, state) => state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              requestPermission: (value) => SettingsDetailsButtonItem(
                optionTitle: context.localizations.cameraPermission,
                icon: const Icon(
                  Icons.camera_alt,
                  color: AppColors.paleOrange,
                ),
                onChanged: () =>
                    context.read<SettingsCubit>().requestPermission(),
                isFirstDetail: value,
                firstDetail: context.localizations.permissionAllowed,
                secondDetail: context.localizations.permissionDenied,
              ),
            ),
          ),
        ],
      );
}

class SettingsDetailsButtonItem extends StatelessWidget {
  const SettingsDetailsButtonItem(
      {required this.optionTitle,
      required this.icon,
      required this.onChanged,
      required this.firstDetail,
      required this.secondDetail,
      required this.isFirstDetail,
      Key? key})
      : super(key: key);

  final String optionTitle;
  final bool isFirstDetail;
  final Icon icon;
  final String firstDetail;
  final String secondDetail;
  final Function() onChanged;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onChanged,
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppDimens.mediumSpace_8,
            top: AppDimens.bigSpace_12,
            right: AppDimens.mediumSpace_8,
          ),
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: AppDimens.mediumSpace_8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    optionTitle,
                    style: const TextStyle(
                      color: AppColors.primaryText,
                      fontSize: AppDimens.normalTextSize_16,
                    ),
                  ),
                  Text(
                    isFirstDetail ? firstDetail : secondDetail,
                    style: const TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: AppDimens.smallTextSize_14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
