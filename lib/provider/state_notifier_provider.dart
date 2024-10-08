import 'package:benefixs/state/auth_state.dart';
import 'package:benefixs/state/auth_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerNotifierProvider =
    StateNotifierProvider<RegisterStateNotifier, RegistersState>(
        (ref) => RegisterStateNotifier(ref));
