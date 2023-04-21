import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:recipe_finder/common/widgets/appbar.dart';
import 'package:recipe_finder/common/widgets/base_screen.dart';
import 'package:recipe_finder/common/widgets/custom_scroll_behavior.dart';
import 'package:recipe_finder/core/config/app_colors.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/features/products/presentation/cubit/product_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

@RoutePage()
class ScannedProductsScreen extends StatelessWidget {
  const ScannedProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (BuildContext context) => getIt<ProductCubit>(),
        child: const ScannedProductView(),
      );
}

class ScannedProductView extends StatelessWidget {
  const ScannedProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseScreen(
        customPadding: EdgeInsets.zero,
        child: Column(
          children: const [
            // TODO: localize
            CustomizedAppbar(
              title: 'Scanned Products',
            ),
            _ProductListsView(),
          ],
        ),
      );
}

class _ProductListsView extends StatelessWidget {
  const _ProductListsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Flexible(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppDimens.subLargerSpace_20,
          ),
          child: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: AnimatedList(
              shrinkWrap: true,
              initialItemCount: 10,
              itemBuilder: (context, index, animation) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProductItem(
                    index: index,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class _ProductItem extends StatelessWidget {
  const _ProductItem({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => _CustomizedSlidable(
        index: index,
        child: Card(
          child: ListTile(
            title: Text(
              '${index + 1}. Product',
              style: const TextStyle(
                fontSize: AppDimens.normalTextSize_16,
                color: AppColors.primaryText,
              ),
            ),
            trailing: const Icon(
              Icons.edit,
              color: AppColors.secondaryText,
            ),
            onTap: () => print('Product No. ${index + 1} ha been tapped'),
          ),
        ),
      );
}

class _CustomizedSlidable extends StatelessWidget {
  const _CustomizedSlidable({
    required this.child,
    required this.index,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final int index;

  @override
  Widget build(BuildContext context) => Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(3),
              backgroundColor: AppColors.statusRed,
              icon: Icons.delete,
              // TODO: localize
              label: 'delete',
              onPressed: (_) =>
                  print('Product No. ${index + 1} ha been tapped'),
            ),
          ],
        ),
        child: child,
      );
}
