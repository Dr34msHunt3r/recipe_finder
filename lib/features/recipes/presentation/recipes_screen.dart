import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';

@RoutePage()
class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const BaseScreen(
      customPadding: EdgeInsets.zero,
      child: Center(child: Text("Recipes screen")));
}
