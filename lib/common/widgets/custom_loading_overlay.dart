import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/app_circular_progress_indicator.dart';
import 'package:recipe_finder/core/config/app_colors.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(children: const [
        Opacity(
          opacity: 0.8,
          child:
              ModalBarrier(dismissible: false, color: AppColors.opacityWhite),
        ),
        Center(
          child: AppCircularProgressIndicator(
            withBaseScreen: false,
          ),
        ),
      ]);
}
