import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:benefixs/data/repository/auth_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthenticationRepoAbstract>(
  (ref) => AuthenticationRepoImpl(ref: ref),
);
