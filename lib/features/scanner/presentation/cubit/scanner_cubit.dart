import 'dart:io' as io;

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recipe_finder/features/scanner/object_detector_painter.dart';

part 'scanner_cubit.freezed.dart';
part 'scanner_state.dart';

@injectable
class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit() : super(const ScannerState.initial());
  late List<CameraDescription> _cameras = <CameraDescription>[];
  late CameraController _cameraController;

  late ObjectDetector _objectDetector;
  bool _canProcess = false;
  bool _isBusy = false;
  CustomPaint? _customPaint;

  static const path = 'assets/ml/object_labeler.tflite';

  Future<void> init() async {
    _startCamera();
    _initializeDetector(DetectionMode.stream);
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
      await _cameraController.initialize().then((_) => _startLiveFeed());
      emit(ScannerState.ready(_cameraController, _customPaint));
    } catch (e) {
      emit(const ScannerState.failure());
      if (kDebugMode) {
        print("\x1B[31m_startCamera error: $e\x1B[0m");
      }
    }
  }

  void _initializeDetector(DetectionMode mode) async {
    final modelPath = await _getModel(path);
    final options = LocalObjectDetectorOptions(
      mode: mode,
      modelPath: modelPath,
      classifyObjects: true,
      multipleObjects: true,
    );
    _objectDetector = ObjectDetector(options: options);
    _canProcess = true;
  }

  Future<void> processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    final objects = await _objectDetector.processImage(inputImage);
    if (inputImage.inputImageData?.size != null &&
        inputImage.inputImageData?.imageRotation != null) {
      final painter = ObjectDetectorPainter(
          objects,
          inputImage.inputImageData!.imageRotation,
          inputImage.inputImageData!.size);
      _customPaint = CustomPaint(painter: painter);
      emit(ScannerState.ready(_cameraController, _customPaint));
    }
    _isBusy = false;
  }

  Future _processCameraImage(CameraImage image) async {
    final WriteBuffer allBytes = WriteBuffer();
    for (final Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final Size imageSize =
        Size(image.width.toDouble(), image.height.toDouble());

    final camera = _cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back);
    final imageRotation =
        InputImageRotationValue.fromRawValue(camera.sensorOrientation);
    if (imageRotation == null) return;

    final inputImageFormat =
        InputImageFormatValue.fromRawValue(image.format.raw);
    if (inputImageFormat == null) return;

    final planeData = image.planes.map(
      (Plane plane) {
        return InputImagePlaneMetadata(
          bytesPerRow: plane.bytesPerRow,
          height: plane.height,
          width: plane.width,
        );
      },
    ).toList();

    final inputImageData = InputImageData(
      size: imageSize,
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    final inputImage =
        InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
    processImage(inputImage);
  }

  Future _startLiveFeed() async {
    _cameraController.startImageStream(_processCameraImage);
  }

  Future<String> _getModel(String assetPath) async {
    if (io.Platform.isAndroid) {
      return 'flutter_assets/$assetPath';
    }
    final path = '${(await getApplicationSupportDirectory()).path}/$assetPath';
    await io.Directory(dirname(path)).create(recursive: true);
    final file = io.File(path);
    if (!await file.exists()) {
      final byteData = await rootBundle.load(assetPath);
      await file.writeAsBytes(byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }
    return file.path;
  }

  @override
  Future<void> close() {
    _cameraController.dispose();
    _cameraController.stopImageStream();
    _canProcess = false;
    _objectDetector.close();
    return super.close();
  }
}
