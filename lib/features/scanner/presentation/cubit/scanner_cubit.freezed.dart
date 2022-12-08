// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scanner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerStateCopyWith<$Res> {
  factory $ScannerStateCopyWith(
          ScannerState value, $Res Function(ScannerState) then) =
      _$ScannerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScannerStateCopyWithImpl<$Res> implements $ScannerStateCopyWith<$Res> {
  _$ScannerStateCopyWithImpl(this._value, this._then);

  final ScannerState _value;
  // ignore: unused_field
  final $Res Function(ScannerState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ScannerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScannerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({CameraController cameraController, CustomPaint? customPaint});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? cameraController = freezed,
    Object? customPaint = freezed,
  }) {
    return _then(_$_Ready(
      cameraController == freezed
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as CameraController,
      customPaint == freezed
          ? _value.customPaint
          : customPaint // ignore: cast_nullable_to_non_nullable
              as CustomPaint?,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.cameraController, this.customPaint);

  @override
  final CameraController cameraController;
  @override
  final CustomPaint? customPaint;

  @override
  String toString() {
    return 'ScannerState.ready(cameraController: $cameraController, customPaint: $customPaint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality()
                .equals(other.cameraController, cameraController) &&
            const DeepCollectionEquality()
                .equals(other.customPaint, customPaint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cameraController),
      const DeepCollectionEquality().hash(customPaint));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) {
    return ready(cameraController, customPaint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) {
    return ready?.call(cameraController, customPaint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(cameraController, customPaint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements ScannerState, ScannerBuilderState {
  const factory _Ready(final CameraController cameraController,
      final CustomPaint? customPaint) = _$_Ready;

  CameraController get cameraController;
  CustomPaint? get customPaint;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CameraAccessDeniedCopyWith<$Res> {
  factory _$$_CameraAccessDeniedCopyWith(_$_CameraAccessDenied value,
          $Res Function(_$_CameraAccessDenied) then) =
      __$$_CameraAccessDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CameraAccessDeniedCopyWithImpl<$Res>
    extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_CameraAccessDeniedCopyWith<$Res> {
  __$$_CameraAccessDeniedCopyWithImpl(
      _$_CameraAccessDenied _value, $Res Function(_$_CameraAccessDenied) _then)
      : super(_value, (v) => _then(v as _$_CameraAccessDenied));

  @override
  _$_CameraAccessDenied get _value => super._value as _$_CameraAccessDenied;
}

/// @nodoc

class _$_CameraAccessDenied implements _CameraAccessDenied {
  const _$_CameraAccessDenied();

  @override
  String toString() {
    return 'ScannerState.cameraAccessDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CameraAccessDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) {
    return cameraAccessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) {
    return cameraAccessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (cameraAccessDenied != null) {
      return cameraAccessDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) {
    return cameraAccessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) {
    return cameraAccessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (cameraAccessDenied != null) {
      return cameraAccessDenied(this);
    }
    return orElse();
  }
}

abstract class _CameraAccessDenied
    implements ScannerState, ScannerBuilderState {
  const factory _CameraAccessDenied() = _$_CameraAccessDenied;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'ScannerState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ScannerState, ScannerListenerState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_SuccessfullyScannedObjectCopyWith<$Res> {
  factory _$$_SuccessfullyScannedObjectCopyWith(
          _$_SuccessfullyScannedObject value,
          $Res Function(_$_SuccessfullyScannedObject) then) =
      __$$_SuccessfullyScannedObjectCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_SuccessfullyScannedObjectCopyWithImpl<$Res>
    extends _$ScannerStateCopyWithImpl<$Res>
    implements _$$_SuccessfullyScannedObjectCopyWith<$Res> {
  __$$_SuccessfullyScannedObjectCopyWithImpl(
      _$_SuccessfullyScannedObject _value,
      $Res Function(_$_SuccessfullyScannedObject) _then)
      : super(_value, (v) => _then(v as _$_SuccessfullyScannedObject));

  @override
  _$_SuccessfullyScannedObject get _value =>
      super._value as _$_SuccessfullyScannedObject;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SuccessfullyScannedObject(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessfullyScannedObject implements _SuccessfullyScannedObject {
  const _$_SuccessfullyScannedObject(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ScannerState.successfullyScannedObject(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessfullyScannedObject &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessfullyScannedObjectCopyWith<_$_SuccessfullyScannedObject>
      get copyWith => __$$_SuccessfullyScannedObjectCopyWithImpl<
          _$_SuccessfullyScannedObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            CameraController cameraController, CustomPaint? customPaint)
        ready,
    required TResult Function() cameraAccessDenied,
    required TResult Function() failure,
    required TResult Function(String message) successfullyScannedObject,
  }) {
    return successfullyScannedObject(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
  }) {
    return successfullyScannedObject?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            CameraController cameraController, CustomPaint? customPaint)?
        ready,
    TResult Function()? cameraAccessDenied,
    TResult Function()? failure,
    TResult Function(String message)? successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (successfullyScannedObject != null) {
      return successfullyScannedObject(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_CameraAccessDenied value) cameraAccessDenied,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessfullyScannedObject value)
        successfullyScannedObject,
  }) {
    return successfullyScannedObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
  }) {
    return successfullyScannedObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_CameraAccessDenied value)? cameraAccessDenied,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessfullyScannedObject value)?
        successfullyScannedObject,
    required TResult orElse(),
  }) {
    if (successfullyScannedObject != null) {
      return successfullyScannedObject(this);
    }
    return orElse();
  }
}

abstract class _SuccessfullyScannedObject
    implements ScannerState, ScannerListenerState {
  const factory _SuccessfullyScannedObject(final String message) =
      _$_SuccessfullyScannedObject;

  String get message;
  @JsonKey(ignore: true)
  _$$_SuccessfullyScannedObjectCopyWith<_$_SuccessfullyScannedObject>
      get copyWith => throw _privateConstructorUsedError;
}
