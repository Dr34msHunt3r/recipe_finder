import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({
    this.withBaseScreen = true,
    this.color,
    Key? key,
  }) : super(key: key);

  final bool withBaseScreen;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (!withBaseScreen) return _buildAppIndicator();
    return BaseScreen(
      child: Center(
        child: _buildAppIndicator(),
      ),
    );
  }

  Widget _buildAppIndicator() => CircularProgressIndicator(
        color: color,
      );
}
