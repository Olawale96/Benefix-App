import 'dart:developer';

import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/provider/repository.dart';
import 'package:benefixs/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterStateNotifier extends StateNotifier<RegistersState> {
  final AuthenticationRepoAbstract _apiRepository;

  RegisterStateNotifier(Ref ref)
      : _apiRepository = ref.read(authRepositoryProvider),
        super(const RegistersState.initial());

  Future<void> register(RegisterParam functionParam) async {
    state = const RegistersState.loading();
    final checkApiOrError = await _apiRepository.register(functionParam);
    state = checkApiOrError.fold(
      (l) {
        return RegistersState.failure(l);
      },
      (r) {log('this is success message: ${r!.message}');
        return RegistersState.success(r);
      },
    );
  }

  void resetState() {
    state = const RegistersState.initial();
  }
}
