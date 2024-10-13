import 'package:benefixs/state/auth_state.dart';
import 'package:benefixs/state/auth_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerNotifierProvider =
    StateNotifierProvider<RegisterStateNotifier, RegisterState>(
        (ref) => RegisterStateNotifier(ref));

        final logInNotifierProvider =
    StateNotifierProvider<LoginStateNotifier,LoginState>(
        (ref) => LoginStateNotifier(ref));
    final forgotPasswordNotifierProvider =
    StateNotifierProvider<ForgotPasswordStateNotifier,ForgotPasswordState>(
        (ref) => ForgotPasswordStateNotifier(ref));
       final newPasswordNotifierProvider =  StateNotifierProvider<NewPasswordStateNotifier,NewPasswordState>(
        (ref) => NewPasswordStateNotifier(ref));
