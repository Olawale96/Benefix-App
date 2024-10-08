import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class RegistersState with _$RegistersState {
  const factory RegistersState.initial() = RegistersInitial;
  const factory RegistersState.loading() = RegistersLoadingState;
  const factory RegistersState.failure(Failure failure) = RegistersFailureState;
  const factory RegistersState.success(RegisterModel? successData) =
      RegistersSuccessState;
}