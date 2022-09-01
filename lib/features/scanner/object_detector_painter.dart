import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_mlkit_object_detection/google_mlkit_object_detection.dart';

import 'coordinates_translator.dart';

class ObjectDetectorPainter extends CustomPainter {
  ObjectDetectorPainter(this._objects, this.rotation, this.absoluteSize);

  final List<DetectedObject> _objects;
  final Size absoluteSize;
  final InputImageRotation rotation;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = Colors.green;

    final Paint background = Paint()..color = const Color(0x99000000);

    for (final DetectedObject detectedObject in _objects) {
      final ParagraphBuilder builder = ParagraphBuilder(
        ParagraphStyle(
            textAlign: TextAlign.left,
            fontSize: 16,
            textDirection: TextDirection.ltr),
      );
      builder
          .pushStyle(ui.TextStyle(color: Colors.white, background: background));

      for (final Label label in detectedObject.labels) {
        builder.addText('${label.text} ${label.confidence}\n');
      }

      builder.pop();

      final left = translateX(
          detectedObject.boundingBox.left, rotation, size, absoluteSize);
      final top = translateY(
          detectedObject.boundingBox.top, rotation, size, absoluteSize);
      final right = translateX(
          detectedObject.boundingBox.right, rotation, size, absoluteSize);
      final bottom = translateY(
          detectedObject.boundingBox.bottom, rotation, size, absoluteSize);

      /// Left lines
      canvas.drawLine(Offset(left, bottom),
          Offset(left, bottom + ((top - bottom) / 3)), paint);
      canvas.drawLine(
          Offset(left, top), Offset(left, top - ((top - bottom) / 3)), paint);

      /// Top lines
      canvas.drawLine(
          Offset(left, top), Offset(left + ((right - left) / 3), top), paint);
      canvas.drawLine(
          Offset(right, top), Offset(right - ((right - left) / 3), top), paint);

      /// Right lines
      canvas.drawLine(Offset(right, bottom),
          Offset(right, bottom + ((top - bottom) / 3)), paint);
      canvas.drawLine(
          Offset(right, top), Offset(right, top - ((top - bottom) / 3)), paint);

      /// Bottom lines
      canvas.drawLine(Offset(left, bottom),
          Offset(left + ((right - left) / 3), bottom), paint);
      canvas.drawLine(Offset(right, bottom),
          Offset(right - ((right - left) / 3), bottom), paint);

      canvas.drawParagraph(
        builder.build()
          ..layout(ParagraphConstraints(
            width: right - left,
          )),
        Offset(left, top),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
