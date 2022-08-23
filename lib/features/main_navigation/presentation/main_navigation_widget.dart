import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/features/main_navigation/presentation/cubit/main_navigation_cubit.dart';

class MainNavigationWidget extends StatelessWidget {
  const MainNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      // TODO: use AppColors for this
      backgroundColor: Colors.amber,
      overlayOpacity: 0,
      spaceBetweenChildren: AppDimens.bigSpace_12,
      spacing: AppDimens.bigSpace_12,
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
            child: const Icon(Icons.assignment_turned_in_outlined),
            // TODO: MAGIC TEXT
            label: 'Scanned Products',
            onTap: () =>
                // TODO: take off from navigation stack when push back button
                context.read<MainNavigationCubit>().onScannedProductsTap()),
        SpeedDialChild(
            child: const Icon(Icons.copy), label: 'Any other option :)')
      ],
    );
  }
}
