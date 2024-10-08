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
mixin _$RegistersState {
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
    required TResult Function(RegistersInitial value) initial,
    required TResult Function(RegistersLoadingState value) loading,
    required TResult Function(RegistersFailureState value) failure,
    required TResult Function(RegistersSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersInitial value)? initial,
    TResult? Function(RegistersLoadingState value)? loading,
    TResult? Function(RegistersFailureState value)? failure,
    TResult? Function(RegistersSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersInitial value)? initial,
    TResult Function(RegistersLoadingState value)? loading,
    TResult Function(RegistersFailureState value)? failure,
    TResult Function(RegistersSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistersStateCopyWith<$Res> {
  factory $RegistersStateCopyWith(
          RegistersState value, $Res Function(RegistersState) then) =
      _$RegistersStateCopyWithImpl<$Res, RegistersState>;
}

/// @nodoc
class _$RegistersStateCopyWithImpl<$Res, $Val extends RegistersState>
    implements $RegistersStateCopyWith<$Res> {
  _$RegistersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegistersInitialImplCopyWith<$Res> {
  factory _$$RegistersInitialImplCopyWith(_$RegistersInitialImpl value,
          $Res Function(_$RegistersInitialImpl) then) =
      __$$RegistersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistersInitialImplCopyWithImpl<$Res>
    extends _$RegistersStateCopyWithImpl<$Res, _$RegistersInitialImpl>
    implements _$$RegistersInitialImplCopyWith<$Res> {
  __$$RegistersInitialImplCopyWithImpl(_$RegistersInitialImpl _value,
      $Res Function(_$RegistersInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistersInitialImpl implements RegistersInitial {
  const _$RegistersInitialImpl();

  @override
  String toString() {
    return 'RegistersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegistersInitialImpl);
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
    required TResult Function(RegistersInitial value) initial,
    required TResult Function(RegistersLoadingState value) loading,
    required TResult Function(RegistersFailureState value) failure,
    required TResult Function(RegistersSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersInitial value)? initial,
    TResult? Function(RegistersLoadingState value)? loading,
    TResult? Function(RegistersFailureState value)? failure,
    TResult? Function(RegistersSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersInitial value)? initial,
    TResult Function(RegistersLoadingState value)? loading,
    TResult Function(RegistersFailureState value)? failure,
    TResult Function(RegistersSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegistersInitial implements RegistersState {
  const factory RegistersInitial() = _$RegistersInitialImpl;
}

/// @nodoc
abstract class _$$RegistersLoadingStateImplCopyWith<$Res> {
  factory _$$RegistersLoadingStateImplCopyWith(
          _$RegistersLoadingStateImpl value,
          $Res Function(_$RegistersLoadingStateImpl) then) =
      __$$RegistersLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistersLoadingStateImplCopyWithImpl<$Res>
    extends _$RegistersStateCopyWithImpl<$Res, _$RegistersLoadingStateImpl>
    implements _$$RegistersLoadingStateImplCopyWith<$Res> {
  __$$RegistersLoadingStateImplCopyWithImpl(_$RegistersLoadingStateImpl _value,
      $Res Function(_$RegistersLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistersLoadingStateImpl implements RegistersLoadingState {
  const _$RegistersLoadingStateImpl();

  @override
  String toString() {
    return 'RegistersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistersLoadingStateImpl);
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
    required TResult Function(RegistersInitial value) initial,
    required TResult Function(RegistersLoadingState value) loading,
    required TResult Function(RegistersFailureState value) failure,
    required TResult Function(RegistersSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersInitial value)? initial,
    TResult? Function(RegistersLoadingState value)? loading,
    TResult? Function(RegistersFailureState value)? failure,
    TResult? Function(RegistersSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersInitial value)? initial,
    TResult Function(RegistersLoadingState value)? loading,
    TResult Function(RegistersFailureState value)? failure,
    TResult Function(RegistersSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistersLoadingState implements RegistersState {
  const factory RegistersLoadingState() = _$RegistersLoadingStateImpl;
}

/// @nodoc
abstract class _$$RegistersFailureStateImplCopyWith<$Res> {
  factory _$$RegistersFailureStateImplCopyWith(
          _$RegistersFailureStateImpl value,
          $Res Function(_$RegistersFailureStateImpl) then) =
      __$$RegistersFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RegistersFailureStateImplCopyWithImpl<$Res>
    extends _$RegistersStateCopyWithImpl<$Res, _$RegistersFailureStateImpl>
    implements _$$RegistersFailureStateImplCopyWith<$Res> {
  __$$RegistersFailureStateImplCopyWithImpl(_$RegistersFailureStateImpl _value,
      $Res Function(_$RegistersFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegistersFailureStateImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RegistersFailureStateImpl implements RegistersFailureState {
  const _$RegistersFailureStateImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RegistersState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistersFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistersFailureStateImplCopyWith<_$RegistersFailureStateImpl>
      get copyWith => __$$RegistersFailureStateImplCopyWithImpl<
          _$RegistersFailureStateImpl>(this, _$identity);

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
    required TResult Function(RegistersInitial value) initial,
    required TResult Function(RegistersLoadingState value) loading,
    required TResult Function(RegistersFailureState value) failure,
    required TResult Function(RegistersSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersInitial value)? initial,
    TResult? Function(RegistersLoadingState value)? loading,
    TResult? Function(RegistersFailureState value)? failure,
    TResult? Function(RegistersSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersInitial value)? initial,
    TResult Function(RegistersLoadingState value)? loading,
    TResult Function(RegistersFailureState value)? failure,
    TResult Function(RegistersSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RegistersFailureState implements RegistersState {
  const factory RegistersFailureState(final Failure failure) =
      _$RegistersFailureStateImpl;

  Failure get failure;

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistersFailureStateImplCopyWith<_$RegistersFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistersSuccessStateImplCopyWith<$Res> {
  factory _$$RegistersSuccessStateImplCopyWith(
          _$RegistersSuccessStateImpl value,
          $Res Function(_$RegistersSuccessStateImpl) then) =
      __$$RegistersSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterModel? successData});
}

/// @nodoc
class __$$RegistersSuccessStateImplCopyWithImpl<$Res>
    extends _$RegistersStateCopyWithImpl<$Res, _$RegistersSuccessStateImpl>
    implements _$$RegistersSuccessStateImplCopyWith<$Res> {
  __$$RegistersSuccessStateImplCopyWithImpl(_$RegistersSuccessStateImpl _value,
      $Res Function(_$RegistersSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successData = freezed,
  }) {
    return _then(_$RegistersSuccessStateImpl(
      freezed == successData
          ? _value.successData
          : successData // ignore: cast_nullable_to_non_nullable
              as RegisterModel?,
    ));
  }
}

/// @nodoc

class _$RegistersSuccessStateImpl implements RegistersSuccessState {
  const _$RegistersSuccessStateImpl(this.successData);

  @override
  final RegisterModel? successData;

  @override
  String toString() {
    return 'RegistersState.success(successData: $successData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistersSuccessStateImpl &&
            (identical(other.successData, successData) ||
                other.successData == successData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successData);

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistersSuccessStateImplCopyWith<_$RegistersSuccessStateImpl>
      get copyWith => __$$RegistersSuccessStateImplCopyWithImpl<
          _$RegistersSuccessStateImpl>(this, _$identity);

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
    required TResult Function(RegistersInitial value) initial,
    required TResult Function(RegistersLoadingState value) loading,
    required TResult Function(RegistersFailureState value) failure,
    required TResult Function(RegistersSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistersInitial value)? initial,
    TResult? Function(RegistersLoadingState value)? loading,
    TResult? Function(RegistersFailureState value)? failure,
    TResult? Function(RegistersSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistersInitial value)? initial,
    TResult Function(RegistersLoadingState value)? loading,
    TResult Function(RegistersFailureState value)? failure,
    TResult Function(RegistersSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegistersSuccessState implements RegistersState {
  const factory RegistersSuccessState(final RegisterModel? successData) =
      _$RegistersSuccessStateImpl;

  RegisterModel? get successData;

  /// Create a copy of RegistersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistersSuccessStateImplCopyWith<_$RegistersSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
