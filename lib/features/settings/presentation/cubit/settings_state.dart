part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;

  @Implements<SettingsBuilderState>()
  const factory SettingsState.requestPermission(bool value) =
      _RequestPermission;

  @Implements<SettingsListenerState>()
  const factory SettingsState.permissionGranted() = _PermissionGranted;
}

abstract class SettingsBuilderState {}

abstract class SettingsListenerState {}
