import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/core/api/network_info/network_info.dart';
import 'package:benefixs/core/api/runner/service_return_old_data_first.dart';
import 'package:benefixs/data/remote_source/auth_remots_source_abstract.dart';
import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:benefixs/provider/core/core_providers.dart';
import 'package:benefixs/provider/source.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationRepoImpl implements AuthenticationRepoAbstract {
  final NetworkInfo _networkInfo;
  final AuthRemoteSourceAbstract _apiDataSource;

  AuthenticationRepoImpl({required Ref ref})
      : _apiDataSource = ref.read(authenticationRemoteSourceProvider),
        _networkInfo = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, RegisterModel?>> register(
      RegisterParam functionParam) {
    ServiceRunner<Failure, RegisterModel?> sR =
        ServiceRunner(_networkInfo);
    Future<Either<Failure, RegisterModel?>> responseIs =
        sR.tryRemoteandCatch(
      call: _apiDataSource.register(functionParam),
      errorTitle: "REGISTER API CALL",
    );

    return responseIs;
  }
}