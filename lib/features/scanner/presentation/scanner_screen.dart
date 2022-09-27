import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_assets.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart';
import 'package:recipe_finder/features/settings/presentation/settings_screen.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ScannerView();
}

class ScannerView extends StatelessWidget {
  const ScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ScannerCubit, ScannerState>(
        listener: (_, state) => state.maybeWhen(
          orElse: () => null,
          //TODO: display failure in toast or success for scanned product
        ),
        buildWhen: (_, state) => state is ScannerBuilderState,
        builder: (_, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          cameraAccessDenied: () => _noCameraPermissionsView(context),
          ready: (cameraController, customPainter) => BaseScreen(
            customBackground: AppColors.black,
            customPadding: EdgeInsets.zero,
            withMainNavigation: true,
            child: _cameraView(context, cameraController, customPainter),
          ),
        ),
      );

  Widget _cameraView(BuildContext context, CameraController cameraController,
      CustomPaint? customPaint) {
    var camera = cameraController.value;
    final size = MediaQuery.of(context).size;
    var scale = size.aspectRatio * camera.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Transform.scale(
          scale: scale,
          child: Center(
            child: CameraPreview(cameraController),
          ),
        ),
        if (customPaint != null) customPaint,
      ],
    );
  }

  Widget _noCameraPermissionsView(BuildContext context) => BaseScreen(
        withMainNavigation: true,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: AppDimens.hugeSpace_48,
              ),
              Image.asset(
                AppAssets.lockedCamera,
                fit: BoxFit.none,
                alignment: Alignment.center,
              ),
              Text(
                context.localizations.noAccessToCamera,
                style: const TextStyle(
                  fontSize: AppDimens.normalTextSize_16,
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppDimens.bigSpace_12,
              ),
              Text(
                context.localizations.weDoNotHaveAccessToYourCamera,
                style: const TextStyle(
                  fontSize: AppDimens.smallTextSize_14,
                  color: AppColors.secondaryText,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.localizations.youCanEnableAccessIn,
                    style: const TextStyle(
                      fontSize: AppDimens.smallTextSize_14,
                      color: AppColors.secondaryText,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    ),
                    child: Text(
                      context.localizations.privacySettings,
                      style: const TextStyle(
                        fontSize: AppDimens.smallTextSize_14,
                        color: AppColors.hyperText,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
