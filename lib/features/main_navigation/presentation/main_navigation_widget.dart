import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/features/main_navigation/presentation/cubit/main_navigation_cubit.dart';

class MainNavigationWidget extends StatelessWidget {
  const MainNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: AppColors.artyClickAmber,
      overlayOpacity: 0,
      spaceBetweenChildren: AppDimens.bigSpace_12,
      spacing: AppDimens.bigSpace_12,
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child: const Icon(
            Icons.assignment_turned_in_outlined,
          ),
          label: context.localizations.scannedProducts,
          onTap: () =>
              context.read<MainNavigationCubit>().onScannedProductsTap(),
        ),
        SpeedDialChild(
          child: const Icon(Icons.settings),
          label: context.localizations.settings,
          onTap: () => context.read<MainNavigationCubit>().onSettingsTap(),
        )
      ],
    );
  }
}
