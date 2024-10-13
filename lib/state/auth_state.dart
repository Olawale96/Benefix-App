import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/model/auth/response/forgot_password_model.dart';
import 'package:benefixs/model/auth/response/login_model.dart';
import 'package:benefixs/model/auth/response/new_password_model.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoadingState;
  const factory RegisterState.failure(Failure failure) = RegisterFailureState;
  const factory RegisterState.success(RegisterModel? successData) =
      RegisterSuccessState;
}


@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoadingState;
  const factory LoginState.failure(Failure failure) = LoginFailureState;
  const factory LoginState.success(LoginModel? successData) =
      LoginSuccessState;
}


@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = ForgotPasswordInitial;
  const factory ForgotPasswordState.loading() = ForgotPasswordLoadingState;
  const factory ForgotPasswordState.failure(Failure failure) = ForgotPasswordFailureState;
  const factory ForgotPasswordState.success(ForgotPasswordModel? successData) =
      ForgotPasswordSuccessState;
}
@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState.initial() = NewPasswordInitial;
  const factory NewPasswordState.loading() = NewPasswordLoadingState;
  const factory NewPasswordState.failure(Failure failure) = NewPasswordFailureState;
  const factory NewPasswordState.success(NewPasswordModel? successData) =
      NewPasswordSuccessState;
}
