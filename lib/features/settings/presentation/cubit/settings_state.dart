part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;

  @Implements<SettingsBuilderState>()
  const factory SettingsState.requestPermission(bool value) =
      _RequestPermission;
}

abstract class SettingsBuilderState {}

abstract class SettingsListenerState {}
