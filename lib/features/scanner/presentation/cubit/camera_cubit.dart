import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'camera_cubit.freezed.dart';
part 'camera_state.dart';

@injectable
class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(const CameraState.initial());
  late List<CameraDescription> _cameras = <CameraDescription>[];
  late CameraController _cameraController;

  Future<void> init() async {
    _startCamera();
  }

  Future<void> _startCamera() async {
    try {
      _cameras = await availableCameras();
      _cameraController = CameraController(
        _cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back),
        ResolutionPreset.high,
        enableAudio: false,
      );
      await _cameraController.initialize();
      emit(CameraState.ready(_cameraController));
    } on Exception catch (e) {
      print("startCamera Exception: $e");
    }
  }

  @override
  Future<void> close() {
    _cameraController.dispose();
    return super.close();
  }
}
