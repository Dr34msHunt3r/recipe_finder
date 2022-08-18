import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/features/scanner/presentation/cubit/camera_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        //TODO: display progress loading indicator while camera view is initialized
        create: (_) => getIt<CameraCubit>()..init(),
        child: Builder(
            builder: (context) => BlocConsumer<CameraCubit, CameraState>(
                listener: (_, state) => state.maybeWhen(
                      orElse: () => null,
                      //TODO: display failure in toast
                    ),
                buildWhen: (_, state) => state is CameraBuilderState,
                builder: (_, state) => state.maybeWhen(
                    //TODO: create widget to display if camera view is not available
                    orElse: () => const BaseScreen(
                        customPadding: EdgeInsets.zero,
                        child: Center(child: Text("Scanner screen"))),
                    ready: (cameraController) =>
                        _cameraViewWidget(context, cameraController)))),
      );

  Widget _cameraViewWidget(
      BuildContext context, CameraController cameraController) {
    var camera = cameraController.value;
    final size = MediaQuery.of(context).size;
    var scale = size.aspectRatio * camera.aspectRatio;
    if (scale < 1) scale = 1 / scale;
    return Scaffold(
        body: Stack(
      children: [
        Transform.scale(
            scale: scale, child: Center(child: CameraPreview(cameraController)))
      ],
    ));
  }
}
