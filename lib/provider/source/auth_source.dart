import 'package:benefixs/data/remote_source/auth_remote_source_impl.dart';
import 'package:benefixs/data/remote_source/remote_source_abstract.dart';
import 'package:benefixs/provider/core/core_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationRemoteSourceProvider =
    Provider<AuthRemoteSourceAbstract>((ref) => AuthRemoteDataSourceImpl(
          networkRequest: ref.read(networkRequestProvider),
          networkRetry: ref.read(networkRetryProvider),
        ));
