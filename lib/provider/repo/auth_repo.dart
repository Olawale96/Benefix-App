import 'package:benefixs/data/repository/auth_repo.dart';
import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthenticationRepository>(
  (ref) => AuthenticationRepositoryImpl(ref: ref),
);
