part of 'scanner_cubit.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState.initial() = _Initial;

  @Implements<ScannerBuilderState>()
  const factory ScannerState.ready(
      CameraController cameraController, CustomPaint? customPaint) = _Ready;

  @Implements<ScannerBuilderState>()
  const factory ScannerState.cameraAccessDenied() = _CameraAccessDenied;

  @Implements<ScannerBuilderState>()
  const factory ScannerState.scannedProductList(
      List<ProductModel?> scannedProducts) = _ScannedProductList;

  @Implements<ScannerListenerState>()
  const factory ScannerState.failure() = _Failure;

  @Implements<ScannerListenerState>()
  const factory ScannerState.successfullyScannedObject(String message) =
      _SuccessfullyScannedObject;
}

abstract class ScannerBuilderState {}

abstract class ScannerListenerState {}
