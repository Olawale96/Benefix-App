import 'dart:developer';

import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:benefixs/model/auth/body/enter_new_password_param.dart';
import 'package:benefixs/model/auth/body/forgotpassword_param.dart';
import 'package:benefixs/model/auth/body/login_param.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/provider/repo/auth_repo.dart';

import 'package:benefixs/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterStateNotifier extends StateNotifier<RegisterState> {
  final AuthenticationRepository _apiRepository;

  RegisterStateNotifier(Ref ref)
      : _apiRepository = ref.read(authRepositoryProvider),
        super(const RegisterState.initial());

  Future<void> register(RegisterParam functionParam, WidgetRef ref) async {
    state = const RegisterState.loading();
    final checkApiOrError = await _apiRepository.register(functionParam, ref);
    state = checkApiOrError.fold(
      (l) {
        return RegisterState.failure(l);
      },
      (r) {
        log('this is success message: ${r!.message}');
        return RegisterState.success(r);
      },
    );
  }

  void resetState() {
    state = const RegisterState.initial();
  }
}

class LoginStateNotifier extends StateNotifier<LoginState> {
  final AuthenticationRepository _apiRepository;

  LoginStateNotifier(Ref ref)
      : _apiRepository = ref.read(authRepositoryProvider),
        super(const LoginState.initial());

  Future<void> logIn(LoginParam functionParam, WidgetRef ref) async {
    state = const LoginState.loading();
    final checkApiOrError = await _apiRepository.logIn(functionParam, ref);
    state = checkApiOrError.fold(
      (l) {
        return LoginState.failure(l);
      },
      (r) {
        return LoginState.success(r);
      },
    );
  }

  void resetState() {
    state = const LoginState.initial();
  }
}

class ForgotPasswordStateNotifier extends StateNotifier<ForgotPasswordState> {
  final AuthenticationRepository _apiRepository;

  ForgotPasswordStateNotifier(Ref ref)
      : _apiRepository = ref.read(authRepositoryProvider),
        super(const ForgotPasswordState.initial());

  Future<void> forgotPassword(
      ForgotPasswordParam functionParam, WidgetRef ref) async {
    state = const ForgotPasswordState.loading();
    final checkApiOrError = await _apiRepository.forgotPassword(
      functionParam,
    );
    state = checkApiOrError.fold(
      (l) {
        return ForgotPasswordState.failure(l);
      },
      (r) {
        return ForgotPasswordState.success(r);
      },
    );
  }

  void resetState() {
    state = const ForgotPasswordState.initial();
  }
}

class NewPasswordStateNotifier extends StateNotifier<NewPasswordState> {
  final AuthenticationRepository _apiRepository;

  NewPasswordStateNotifier(Ref ref)
      : _apiRepository = ref.read(authRepositoryProvider),
        super(const NewPasswordState.initial());

  Future<void> newPassword(
      EnterNewPasswordParam functionParam, WidgetRef ref) async {
    state = const NewPasswordState.loading();
    final checkApiOrError = await _apiRepository.enterNewPassword(
      functionParam,
    );
    state = checkApiOrError.fold(
      (l) {
        return NewPasswordState.failure(l);
      },
      (r) {
        return NewPasswordState.success(r);
      },
    );
  }

  void resetState() {
    state = const NewPasswordState.initial();
  }
}
