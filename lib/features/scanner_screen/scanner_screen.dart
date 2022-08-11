import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const BaseScreen(
      customPadding: EdgeInsets.zero,
      child: Center(child: Text("Scanner screen")));
}
