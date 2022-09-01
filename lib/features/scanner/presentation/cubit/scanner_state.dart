part of 'scanner_cubit.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState.initial() = _Initial;

  @Implements<ScannerBuilderState>()
  const factory ScannerState.ready(
      CameraController cameraController, CustomPaint? customPaint) = _Ready;

  @Implements<ScannerListenerState>()
  const factory ScannerState.failure() = _Failure;
}

abstract class ScannerBuilderState {}

abstract class ScannerListenerState {}
