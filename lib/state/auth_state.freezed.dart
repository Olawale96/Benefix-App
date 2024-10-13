// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(RegisterModel? successData) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(RegisterModel? successData)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(RegisterModel? successData)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterFailureState value) failure,
    required TResult Function(RegisterSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterFailureState value)? failure,
    TResult? Function(RegisterSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterFailureState value)? failure,
    TResult Function(RegisterSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterInitialImplCopyWith<$Res> {
  factory _$$RegisterInitialImplCopyWith(_$RegisterInitialImpl value,
          $Res Function(_$RegisterInitialImpl) then) =
      __$$RegisterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterInitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterInitialImpl>
    implements _$$RegisterInitialImplCopyWith<$Res> {
  __$$RegisterInitialImplCopyWithImpl(
      _$RegisterInitialImpl _value, $Res Function(_$RegisterInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterInitialImpl implements RegisterInitial {
  const _$RegisterInitialImpl();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(RegisterModel? successData) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(RegisterModel? successData)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(RegisterModel? successData)? success,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterFailureState value) failure,
    required TResult Function(RegisterSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterFailureState value)? failure,
    TResult? Function(RegisterSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterFailureState value)? failure,
    TResult Function(RegisterSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegisterInitial implements RegisterState {
  const factory RegisterInitial() = _$RegisterInitialImpl;
}

/// @nodoc
abstract class _$$RegisterLoadingStateImplCopyWith<$Res> {
  factory _$$RegisterLoadingStateImplCopyWith(_$RegisterLoadingStateImpl value,
          $Res Function(_$RegisterLoadingStateImpl) then) =
      __$$RegisterLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterLoadingStateImpl>
    implements _$$RegisterLoadingStateImplCopyWith<$Res> {
  __$$RegisterLoadingStateImplCopyWithImpl(_$RegisterLoadingStateImpl _value,
      $Res Function(_$RegisterLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterLoadingStateImpl implements RegisterLoadingState {
  const _$RegisterLoadingStateImpl();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(RegisterModel? successData) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(RegisterModel? successData)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(RegisterModel? successData)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterFailureState value) failure,
    required TResult Function(RegisterSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterFailureState value)? failure,
    TResult? Function(RegisterSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterFailureState value)? failure,
    TResult Function(RegisterSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoadingState implements RegisterState {
  const factory RegisterLoadingState() = _$RegisterLoadingStateImpl;
}

/// @nodoc
abstract class _$$RegisterFailureStateImplCopyWith<$Res> {
  factory _$$RegisterFailureStateImplCopyWith(_$RegisterFailureStateImpl value,
          $Res Function(_$RegisterFailureStateImpl) then) =
      __$$RegisterFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RegisterFailureStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterFailureStateImpl>
    implements _$$RegisterFailureStateImplCopyWith<$Res> {
  __$$RegisterFailureStateImplCopyWithImpl(_$RegisterFailureStateImpl _value,
      $Res Function(_$RegisterFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterFailureStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RegisterFailureStateImpl implements RegisterFailureState {
  const _$RegisterFailureStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RegisterState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailureStateImplCopyWith<_$RegisterFailureStateImpl>
      get copyWith =>
          __$$RegisterFailureStateImplCopyWithImpl<_$RegisterFailureStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(RegisterModel? successData) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(RegisterModel? successData)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(RegisterModel? successData)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterFailureState value) failure,
    required TResult Function(RegisterSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterFailureState value)? failure,
    TResult? Function(RegisterSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterFailureState value)? failure,
    TResult Function(RegisterSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RegisterFailureState implements RegisterState {
  const factory RegisterFailureState(final Failure failure) =
      _$RegisterFailureStateImpl;

  Failure get failure;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterFailureStateImplCopyWith<_$RegisterFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessStateImplCopyWith<$Res> {
  factory _$$RegisterSuccessStateImplCopyWith(_$RegisterSuccessStateImpl value,
          $Res Function(_$RegisterSuccessStateImpl) then) =
      __$$RegisterSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterModel? successData});
}

/// @nodoc
class __$$RegisterSuccessStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterSuccessStateImpl>
    implements _$$RegisterSuccessStateImplCopyWith<$Res> {
  __$$RegisterSuccessStateImplCopyWithImpl(_$RegisterSuccessStateImpl _value,
      $Res Function(_$RegisterSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successData = freezed,
  }) {
    return _then(_$RegisterSuccessStateImpl(
      freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessStateImpl implements RegisterSuccessState {
  const _$RegisterSuccessStateImpl(this.successData);

  @override
  final RegisterModel? successData;

  @override
  String toString() {
    return 'RegisterState.success(successData: $successData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessStateImpl &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successData);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessStateImplCopyWith<_$RegisterSuccessStateImpl>
      get copyWith =>
          __$$RegisterSuccessStateImplCopyWithImpl<_$RegisterSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(RegisterModel? successData) success,
  }) {
    return success(successData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(RegisterModel? successData)? success,
  }) {
    return success?.call(successData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(RegisterModel? successData)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(successData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoadingState value) loading,
    required TResult Function(RegisterFailureState value) failure,
    required TResult Function(RegisterSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoadingState value)? loading,
    TResult? Function(RegisterFailureState value)? failure,
    TResult? Function(RegisterSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoadingState value)? loading,
    TResult Function(RegisterFailureState value)? failure,
    TResult Function(RegisterSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessState implements RegisterState {
  const factory RegisterSuccessState(final RegisterModel? successData) =
      _$RegisterSuccessStateImpl;

  RegisterModel? get successData;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSuccessStateImplCopyWith<_$RegisterSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(LoginModel? successData) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(LoginModel? successData)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(LoginModel? successData)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginFailureState value) failure,
    required TResult Function(LoginSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginFailureState value)? failure,
    TResult? Function(LoginSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginFailureState value)? failure,
    TResult Function(LoginSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(LoginModel? successData) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(LoginModel? successData)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(LoginModel? successData)? success,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginFailureState value) failure,
    required TResult Function(LoginSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginFailureState value)? failure,
    TResult? Function(LoginSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginFailureState value)? failure,
    TResult Function(LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingStateImplCopyWith<$Res> {
  factory _$$LoginLoadingStateImplCopyWith(_$LoginLoadingStateImpl value,
          $Res Function(_$LoginLoadingStateImpl) then) =
      __$$LoginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingStateImpl>
    implements _$$LoginLoadingStateImplCopyWith<$Res> {
  __$$LoginLoadingStateImplCopyWithImpl(_$LoginLoadingStateImpl _value,
      $Res Function(_$LoginLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingStateImpl implements LoginLoadingState {
  const _$LoginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(LoginModel? successData) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(LoginModel? successData)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(LoginModel? successData)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginFailureState value) failure,
    required TResult Function(LoginSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginFailureState value)? failure,
    TResult? Function(LoginSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginFailureState value)? failure,
    TResult Function(LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoadingState implements LoginState {
  const factory LoginLoadingState() = _$LoginLoadingStateImpl;
}

/// @nodoc
abstract class _$$LoginFailureStateImplCopyWith<$Res> {
  factory _$$LoginFailureStateImplCopyWith(_$LoginFailureStateImpl value,
          $Res Function(_$LoginFailureStateImpl) then) =
      __$$LoginFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LoginFailureStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailureStateImpl>
    implements _$$LoginFailureStateImplCopyWith<$Res> {
  __$$LoginFailureStateImplCopyWithImpl(_$LoginFailureStateImpl _value,
      $Res Function(_$LoginFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginFailureStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LoginFailureStateImpl implements LoginFailureState {
  const _$LoginFailureStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoginState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureStateImplCopyWith<_$LoginFailureStateImpl> get copyWith =>
      __$$LoginFailureStateImplCopyWithImpl<_$LoginFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(LoginModel? successData) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(LoginModel? successData)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(LoginModel? successData)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginFailureState value) failure,
    required TResult Function(LoginSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginFailureState value)? failure,
    TResult? Function(LoginSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginFailureState value)? failure,
    TResult Function(LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginFailureState implements LoginState {
  const factory LoginFailureState(final Failure failure) =
      _$LoginFailureStateImpl;

  Failure get failure;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFailureStateImplCopyWith<_$LoginFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel? successData});
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successData = freezed,
  }) {
    return _then(_$LoginSuccessStateImpl(
      freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
    ));
  }
}

/// @nodoc

class _$LoginSuccessStateImpl implements LoginSuccessState {
  const _$LoginSuccessStateImpl(this.successData);

  @override
  final LoginModel? successData;

  @override
  String toString() {
    return 'LoginState.success(successData: $successData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessStateImpl &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successData);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      __$$LoginSuccessStateImplCopyWithImpl<_$LoginSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(LoginModel? successData) success,
  }) {
    return success(successData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(LoginModel? successData)? success,
  }) {
    return success?.call(successData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(LoginModel? successData)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(successData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoadingState value) loading,
    required TResult Function(LoginFailureState value) failure,
    required TResult Function(LoginSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoadingState value)? loading,
    TResult? Function(LoginFailureState value)? failure,
    TResult? Function(LoginSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoadingState value)? loading,
    TResult Function(LoginFailureState value)? failure,
    TResult Function(LoginSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements LoginState {
  const factory LoginSuccessState(final LoginModel? successData) =
      _$LoginSuccessStateImpl;

  LoginModel? get successData;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ForgotPasswordModel? successData) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ForgotPasswordModel? successData)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ForgotPasswordModel? successData)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoadingState value) loading,
    required TResult Function(ForgotPasswordFailureState value) failure,
    required TResult Function(ForgotPasswordSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoadingState value)? loading,
    TResult? Function(ForgotPasswordFailureState value)? failure,
    TResult? Function(ForgotPasswordSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoadingState value)? loading,
    TResult Function(ForgotPasswordFailureState value)? failure,
    TResult Function(ForgotPasswordSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ForgotPasswordInitialImplCopyWith<$Res> {
  factory _$$ForgotPasswordInitialImplCopyWith(
          _$ForgotPasswordInitialImpl value,
          $Res Function(_$ForgotPasswordInitialImpl) then) =
      __$$ForgotPasswordInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordInitialImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordInitialImpl>
    implements _$$ForgotPasswordInitialImplCopyWith<$Res> {
  __$$ForgotPasswordInitialImplCopyWithImpl(_$ForgotPasswordInitialImpl _value,
      $Res Function(_$ForgotPasswordInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordInitialImpl implements ForgotPasswordInitial {
  const _$ForgotPasswordInitialImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ForgotPasswordModel? successData) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ForgotPasswordModel? successData)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ForgotPasswordModel? successData)? success,
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
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoadingState value) loading,
    required TResult Function(ForgotPasswordFailureState value) failure,
    required TResult Function(ForgotPasswordSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoadingState value)? loading,
    TResult? Function(ForgotPasswordFailureState value)? failure,
    TResult? Function(ForgotPasswordSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoadingState value)? loading,
    TResult Function(ForgotPasswordFailureState value)? failure,
    TResult Function(ForgotPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInitial implements ForgotPasswordState {
  const factory ForgotPasswordInitial() = _$ForgotPasswordInitialImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordLoadingStateImplCopyWith<$Res> {
  factory _$$ForgotPasswordLoadingStateImplCopyWith(
          _$ForgotPasswordLoadingStateImpl value,
          $Res Function(_$ForgotPasswordLoadingStateImpl) then) =
      __$$ForgotPasswordLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordLoadingStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordLoadingStateImpl>
    implements _$$ForgotPasswordLoadingStateImplCopyWith<$Res> {
  __$$ForgotPasswordLoadingStateImplCopyWithImpl(
      _$ForgotPasswordLoadingStateImpl _value,
      $Res Function(_$ForgotPasswordLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ForgotPasswordLoadingStateImpl implements ForgotPasswordLoadingState {
  const _$ForgotPasswordLoadingStateImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ForgotPasswordModel? successData) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ForgotPasswordModel? successData)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ForgotPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoadingState value) loading,
    required TResult Function(ForgotPasswordFailureState value) failure,
    required TResult Function(ForgotPasswordSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoadingState value)? loading,
    TResult? Function(ForgotPasswordFailureState value)? failure,
    TResult? Function(ForgotPasswordSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoadingState value)? loading,
    TResult Function(ForgotPasswordFailureState value)? failure,
    TResult Function(ForgotPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordLoadingState implements ForgotPasswordState {
  const factory ForgotPasswordLoadingState() = _$ForgotPasswordLoadingStateImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordFailureStateImplCopyWith<$Res> {
  factory _$$ForgotPasswordFailureStateImplCopyWith(
          _$ForgotPasswordFailureStateImpl value,
          $Res Function(_$ForgotPasswordFailureStateImpl) then) =
      __$$ForgotPasswordFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ForgotPasswordFailureStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordFailureStateImpl>
    implements _$$ForgotPasswordFailureStateImplCopyWith<$Res> {
  __$$ForgotPasswordFailureStateImplCopyWithImpl(
      _$ForgotPasswordFailureStateImpl _value,
      $Res Function(_$ForgotPasswordFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ForgotPasswordFailureStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordFailureStateImpl implements ForgotPasswordFailureState {
  const _$ForgotPasswordFailureStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ForgotPasswordState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordFailureStateImplCopyWith<_$ForgotPasswordFailureStateImpl>
      get copyWith => __$$ForgotPasswordFailureStateImplCopyWithImpl<
          _$ForgotPasswordFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ForgotPasswordModel? successData) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ForgotPasswordModel? successData)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ForgotPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoadingState value) loading,
    required TResult Function(ForgotPasswordFailureState value) failure,
    required TResult Function(ForgotPasswordSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoadingState value)? loading,
    TResult? Function(ForgotPasswordFailureState value)? failure,
    TResult? Function(ForgotPasswordSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoadingState value)? loading,
    TResult Function(ForgotPasswordFailureState value)? failure,
    TResult Function(ForgotPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordFailureState implements ForgotPasswordState {
  const factory ForgotPasswordFailureState(final Failure failure) =
      _$ForgotPasswordFailureStateImpl;

  Failure get failure;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordFailureStateImplCopyWith<_$ForgotPasswordFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessStateImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessStateImplCopyWith(
          _$ForgotPasswordSuccessStateImpl value,
          $Res Function(_$ForgotPasswordSuccessStateImpl) then) =
      __$$ForgotPasswordSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgotPasswordModel? successData});
}

/// @nodoc
class __$$ForgotPasswordSuccessStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordSuccessStateImpl>
    implements _$$ForgotPasswordSuccessStateImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessStateImplCopyWithImpl(
      _$ForgotPasswordSuccessStateImpl _value,
      $Res Function(_$ForgotPasswordSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successData = freezed,
  }) {
    return _then(_$ForgotPasswordSuccessStateImpl(
      freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordModel?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordSuccessStateImpl implements ForgotPasswordSuccessState {
  const _$ForgotPasswordSuccessStateImpl(this.successData);

  @override
  final ForgotPasswordModel? successData;

  @override
  String toString() {
    return 'ForgotPasswordState.success(successData: $successData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessStateImpl &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successData);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordSuccessStateImplCopyWith<_$ForgotPasswordSuccessStateImpl>
      get copyWith => __$$ForgotPasswordSuccessStateImplCopyWithImpl<
          _$ForgotPasswordSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(ForgotPasswordModel? successData) success,
  }) {
    return success(successData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(ForgotPasswordModel? successData)? success,
  }) {
    return success?.call(successData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(ForgotPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(successData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInitial value) initial,
    required TResult Function(ForgotPasswordLoadingState value) loading,
    required TResult Function(ForgotPasswordFailureState value) failure,
    required TResult Function(ForgotPasswordSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInitial value)? initial,
    TResult? Function(ForgotPasswordLoadingState value)? loading,
    TResult? Function(ForgotPasswordFailureState value)? failure,
    TResult? Function(ForgotPasswordSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInitial value)? initial,
    TResult Function(ForgotPasswordLoadingState value)? loading,
    TResult Function(ForgotPasswordFailureState value)? failure,
    TResult Function(ForgotPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccessState implements ForgotPasswordState {
  const factory ForgotPasswordSuccessState(
          final ForgotPasswordModel? successData) =
      _$ForgotPasswordSuccessStateImpl;

  ForgotPasswordModel? get successData;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordSuccessStateImplCopyWith<_$ForgotPasswordSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(NewPasswordModel? successData) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(NewPasswordModel? successData)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(NewPasswordModel? successData)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordInitial value) initial,
    required TResult Function(NewPasswordLoadingState value) loading,
    required TResult Function(NewPasswordFailureState value) failure,
    required TResult Function(NewPasswordSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordInitial value)? initial,
    TResult? Function(NewPasswordLoadingState value)? loading,
    TResult? Function(NewPasswordFailureState value)? failure,
    TResult? Function(NewPasswordSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordInitial value)? initial,
    TResult Function(NewPasswordLoadingState value)? loading,
    TResult Function(NewPasswordFailureState value)? failure,
    TResult Function(NewPasswordSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordStateCopyWith<$Res> {
  factory $NewPasswordStateCopyWith(
          NewPasswordState value, $Res Function(NewPasswordState) then) =
      _$NewPasswordStateCopyWithImpl<$Res, NewPasswordState>;
}

/// @nodoc
class _$NewPasswordStateCopyWithImpl<$Res, $Val extends NewPasswordState>
    implements $NewPasswordStateCopyWith<$Res> {
  _$NewPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NewPasswordInitialImplCopyWith<$Res> {
  factory _$$NewPasswordInitialImplCopyWith(_$NewPasswordInitialImpl value,
          $Res Function(_$NewPasswordInitialImpl) then) =
      __$$NewPasswordInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordInitialImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordInitialImpl>
    implements _$$NewPasswordInitialImplCopyWith<$Res> {
  __$$NewPasswordInitialImplCopyWithImpl(_$NewPasswordInitialImpl _value,
      $Res Function(_$NewPasswordInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewPasswordInitialImpl implements NewPasswordInitial {
  const _$NewPasswordInitialImpl();

  @override
  String toString() {
    return 'NewPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewPasswordInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(NewPasswordModel? successData) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(NewPasswordModel? successData)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(NewPasswordModel? successData)? success,
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
    required TResult Function(NewPasswordInitial value) initial,
    required TResult Function(NewPasswordLoadingState value) loading,
    required TResult Function(NewPasswordFailureState value) failure,
    required TResult Function(NewPasswordSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordInitial value)? initial,
    TResult? Function(NewPasswordLoadingState value)? loading,
    TResult? Function(NewPasswordFailureState value)? failure,
    TResult? Function(NewPasswordSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordInitial value)? initial,
    TResult Function(NewPasswordLoadingState value)? loading,
    TResult Function(NewPasswordFailureState value)? failure,
    TResult Function(NewPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewPasswordInitial implements NewPasswordState {
  const factory NewPasswordInitial() = _$NewPasswordInitialImpl;
}

/// @nodoc
abstract class _$$NewPasswordLoadingStateImplCopyWith<$Res> {
  factory _$$NewPasswordLoadingStateImplCopyWith(
          _$NewPasswordLoadingStateImpl value,
          $Res Function(_$NewPasswordLoadingStateImpl) then) =
      __$$NewPasswordLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPasswordLoadingStateImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordLoadingStateImpl>
    implements _$$NewPasswordLoadingStateImplCopyWith<$Res> {
  __$$NewPasswordLoadingStateImplCopyWithImpl(
      _$NewPasswordLoadingStateImpl _value,
      $Res Function(_$NewPasswordLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewPasswordLoadingStateImpl implements NewPasswordLoadingState {
  const _$NewPasswordLoadingStateImpl();

  @override
  String toString() {
    return 'NewPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(NewPasswordModel? successData) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(NewPasswordModel? successData)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(NewPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordInitial value) initial,
    required TResult Function(NewPasswordLoadingState value) loading,
    required TResult Function(NewPasswordFailureState value) failure,
    required TResult Function(NewPasswordSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordInitial value)? initial,
    TResult? Function(NewPasswordLoadingState value)? loading,
    TResult? Function(NewPasswordFailureState value)? failure,
    TResult? Function(NewPasswordSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordInitial value)? initial,
    TResult Function(NewPasswordLoadingState value)? loading,
    TResult Function(NewPasswordFailureState value)? failure,
    TResult Function(NewPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewPasswordLoadingState implements NewPasswordState {
  const factory NewPasswordLoadingState() = _$NewPasswordLoadingStateImpl;
}

/// @nodoc
abstract class _$$NewPasswordFailureStateImplCopyWith<$Res> {
  factory _$$NewPasswordFailureStateImplCopyWith(
          _$NewPasswordFailureStateImpl value,
          $Res Function(_$NewPasswordFailureStateImpl) then) =
      __$$NewPasswordFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$NewPasswordFailureStateImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordFailureStateImpl>
    implements _$$NewPasswordFailureStateImplCopyWith<$Res> {
  __$$NewPasswordFailureStateImplCopyWithImpl(
      _$NewPasswordFailureStateImpl _value,
      $Res Function(_$NewPasswordFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$NewPasswordFailureStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$NewPasswordFailureStateImpl implements NewPasswordFailureState {
  const _$NewPasswordFailureStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NewPasswordState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordFailureStateImplCopyWith<_$NewPasswordFailureStateImpl>
      get copyWith => __$$NewPasswordFailureStateImplCopyWithImpl<
          _$NewPasswordFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(NewPasswordModel? successData) success,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(NewPasswordModel? successData)? success,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(NewPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordInitial value) initial,
    required TResult Function(NewPasswordLoadingState value) loading,
    required TResult Function(NewPasswordFailureState value) failure,
    required TResult Function(NewPasswordSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordInitial value)? initial,
    TResult? Function(NewPasswordLoadingState value)? loading,
    TResult? Function(NewPasswordFailureState value)? failure,
    TResult? Function(NewPasswordSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordInitial value)? initial,
    TResult Function(NewPasswordLoadingState value)? loading,
    TResult Function(NewPasswordFailureState value)? failure,
    TResult Function(NewPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NewPasswordFailureState implements NewPasswordState {
  const factory NewPasswordFailureState(final Failure failure) =
      _$NewPasswordFailureStateImpl;

  Failure get failure;

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewPasswordFailureStateImplCopyWith<_$NewPasswordFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewPasswordSuccessStateImplCopyWith<$Res> {
  factory _$$NewPasswordSuccessStateImplCopyWith(
          _$NewPasswordSuccessStateImpl value,
          $Res Function(_$NewPasswordSuccessStateImpl) then) =
      __$$NewPasswordSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NewPasswordModel? successData});
}

/// @nodoc
class __$$NewPasswordSuccessStateImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordSuccessStateImpl>
    implements _$$NewPasswordSuccessStateImplCopyWith<$Res> {
  __$$NewPasswordSuccessStateImplCopyWithImpl(
      _$NewPasswordSuccessStateImpl _value,
      $Res Function(_$NewPasswordSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successData = freezed,
  }) {
    return _then(_$NewPasswordSuccessStateImpl(
      freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as NewPasswordModel?,
    ));
  }
}

/// @nodoc

class _$NewPasswordSuccessStateImpl implements NewPasswordSuccessState {
  const _$NewPasswordSuccessStateImpl(this.successData);

  @override
  final NewPasswordModel? successData;

  @override
  String toString() {
    return 'NewPasswordState.success(successData: $successData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordSuccessStateImpl &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successData);

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordSuccessStateImplCopyWith<_$NewPasswordSuccessStateImpl>
      get copyWith => __$$NewPasswordSuccessStateImplCopyWithImpl<
          _$NewPasswordSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(NewPasswordModel? successData) success,
  }) {
    return success(successData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failure,
    TResult? Function(NewPasswordModel? successData)? success,
  }) {
    return success?.call(successData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(NewPasswordModel? successData)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(successData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewPasswordInitial value) initial,
    required TResult Function(NewPasswordLoadingState value) loading,
    required TResult Function(NewPasswordFailureState value) failure,
    required TResult Function(NewPasswordSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewPasswordInitial value)? initial,
    TResult? Function(NewPasswordLoadingState value)? loading,
    TResult? Function(NewPasswordFailureState value)? failure,
    TResult? Function(NewPasswordSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewPasswordInitial value)? initial,
    TResult Function(NewPasswordLoadingState value)? loading,
    TResult Function(NewPasswordFailureState value)? failure,
    TResult Function(NewPasswordSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NewPasswordSuccessState implements NewPasswordState {
  const factory NewPasswordSuccessState(final NewPasswordModel? successData) =
      _$NewPasswordSuccessStateImpl;

  NewPasswordModel? get successData;

  /// Create a copy of NewPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewPasswordSuccessStateImplCopyWith<_$NewPasswordSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
