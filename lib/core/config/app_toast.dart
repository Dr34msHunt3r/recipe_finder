import 'package:fluttertoast/fluttertoast.dart';
import 'package:recipe_finder/core/config/app_colors.dart';

class AppToasts {
  const AppToasts._();

  static void showFailureToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.statusRed,
      textColor: AppColors.white,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static void showSuccessToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.dark,
      textColor: AppColors.white,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
