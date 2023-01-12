import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/common/widgets/appbar.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/core/config/app_assets.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/config/app_paths.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/features/home/presentation/cubit/home_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (BuildContext context) => getIt<HomeCubit>(),
        child: const HomeView(),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseScreen(
        customPadding: EdgeInsets.zero,
        child: Column(
          children: [
            CustomizedAppbar(
              title: context.localizations.recipeFinder,
              imageTitlePath: AppAssets.appTitle,
            ),
            _ScannerContentWidget(),
          ],
        ),
      );
}

class _ScannerContentWidget extends StatelessWidget {
  static const _containerSize = 230.0;
  static const _shadowOpacity = 0.5;
  static const _shadowRadius = 5.0;
  static const _shadowBlurRadius = 7.0;
  static const _offset = Offset(0, 3);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(
          AppDimens.extraLargeSpace_32,
        ),
        child: Column(
          children: [
            _scannerButton(context),
            _instructions(context),
          ],
        ),
      );

  Widget _scannerButton(BuildContext context) => GestureDetector(
        child: Container(
          height: _containerSize,
          width: _containerSize,
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(_shadowOpacity),
                spreadRadius: _shadowRadius,
                blurRadius: _shadowBlurRadius,
                offset: _offset,
              ),
            ],
          ),
          child: const Icon(
            Icons.qr_code_scanner_sharp,
            size: AppDimens.hugeIconSize_150,
          ),
        ),
        onTap: () {
          context.router.pushNamed(
            AppPaths.scannerPath,
          );
        },
      );

  Widget _instructions(BuildContext context) => Padding(
        padding: const EdgeInsets.all(
          AppDimens.mediumSpace_8,
        ),
        child: Text(
          context.localizations.tapHereToScanIngredients,
          style: const TextStyle(
            fontSize: AppDimens.normalTextSize_16,
            color: AppColors.primaryText,
          ),
        ),
      );
}
