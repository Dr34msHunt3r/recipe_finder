part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial() = _Initial;

  @Implements<CameraBuilderState>()
  const factory CameraState.ready(CameraController cameraController) = _Ready;
}

abstract class CameraBuilderState {}
