import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';

class ScannedProductsScreen extends StatelessWidget {
  const ScannedProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const BaseScreen(
      customPadding: EdgeInsets.zero,
      child: Center(child: Text("Scanned Products screen")));
}
