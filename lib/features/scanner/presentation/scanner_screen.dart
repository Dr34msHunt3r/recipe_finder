import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<ScannerCubit>()..init(),
        child: const ScannerView(),
      );
}

class ScannerView extends StatelessWidget {
  const ScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      // BaseScreen(
      //   withMainNavigation: true,
      //   customPadding: EdgeInsets.zero,
      //   child:
      BlocConsumer<ScannerCubit, ScannerState>(
          listener: (_, state) => state.maybeWhen(
                orElse: () => null,
                //TODO: display failure in toast or success for scanned product
              ),
          buildWhen: (_, state) => state is ScannerBuilderState,
          builder: (_, state) => state.maybeWhen(
                //TODO: create widget to display if camera view is not available
                orElse: () => const BaseScreen(
                    customPadding: EdgeInsets.zero,
                    withMainNavigation: true,
                    child: Center(child: Text("Scanner screen"))),
                ready: (cameraController, customPainter) => BaseScreen(
                    customBackground: AppColors.black,
                    customPadding: EdgeInsets.zero,
                    withMainNavigation: true,
                    child:
                        _cameraView(context, cameraController, customPainter)),
              ))
      // )
      ;

  Widget _cameraView(BuildContext context, CameraController cameraController,
      CustomPaint? customPaint) {
    var camera = cameraController.value;
    final size = MediaQuery.of(context).size;
    var scale = size.aspectRatio * camera.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return Stack(fit: StackFit.expand, children: <Widget>[
      Transform.scale(
          scale: scale, child: Center(child: CameraPreview(cameraController))),
      if (customPaint != null) customPaint,
    ]);
  }
}
