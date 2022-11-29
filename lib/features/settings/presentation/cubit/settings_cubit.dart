import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());
  late PermissionStatus _permissionStatus;

  Future<void> init() async {
    _permissionStatus = await Permission.camera.status;

    if (_permissionStatus.isGranted) {
      emit(const SettingsState.requestPermission(true));
    } else {
      emit(const SettingsState.requestPermission(false));
    }
  }

  Future<void> requestPermission() async {
    _permissionStatus = await Permission.camera.request();

    if (_permissionStatus.isGranted) {
      emit(const SettingsState.requestPermission(true));
    } else if (Platform.isIOS || _permissionStatus.isPermanentlyDenied) {
      openAppSettings();
      emit(const SettingsState.requestPermission(false));
    } else {
      emit(const SettingsState.requestPermission(false));
    }
  }
}
