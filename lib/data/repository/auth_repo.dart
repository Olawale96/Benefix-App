import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/core/api/network_info/network_info.dart';
import 'package:benefixs/core/api/runner/service.dart';
import 'package:benefixs/data/remote_source/remote_source_abstract.dart';
import 'package:benefixs/data/repository/auth_repo_abstract.dart';
import 'package:benefixs/model/auth/body/enter_new_password_param.dart';
import 'package:benefixs/model/auth/body/forgotpassword_param.dart';
import 'package:benefixs/model/auth/body/login_param.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/forgot_password_model.dart';
import 'package:benefixs/model/auth/response/login_model.dart';
import 'package:benefixs/model/auth/response/new_password_model.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:benefixs/provider/core/core_providers.dart';
import 'package:benefixs/provider/source/auth_source.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo _networkInfo;
  final AuthRemoteSourceAbstract _apiDataSource;

  AuthenticationRepositoryImpl({required Ref ref})
      : _apiDataSource = ref.read(authenticationRemoteSourceProvider),
        _networkInfo = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, RegisterModel?>> register(
      RegisterParam functionParam,WidgetRef ref) {
    ServiceRunner<Failure, RegisterModel?> sR =
        ServiceRunner(_networkInfo);
    Future<Either<Failure, RegisterModel?>> responseIs =
        sR.tryRemoteandCatch(
      call: _apiDataSource.register(functionParam,ref),
      errorTitle: "REGISTER API CALL",
    );

    return responseIs;
  }

    @override
  Future<Either<Failure, LoginModel?>> logIn(
      LoginParam functionParam,WidgetRef ref) {
    ServiceRunner<Failure, LoginModel?> sR =
        ServiceRunner(_networkInfo);
    Future<Either<Failure, LoginModel?>> responseIs =
        sR.tryRemoteandCatch(
      call: _apiDataSource.logIn(functionParam,ref),
      errorTitle: "REGISTER API CALL",
    );

    return responseIs;
  }

      @override
  Future<Either<Failure, ForgotPasswordModel?>> forgotPassword(
      ForgotPasswordParam functionParam) {
    ServiceRunner<Failure, ForgotPasswordModel?> sR =
        ServiceRunner(_networkInfo);
    Future<Either<Failure, ForgotPasswordModel?>> responseIs =
        sR.tryRemoteandCatch(
      call: _apiDataSource.forgotPassword(functionParam),
      errorTitle: "REGISTER API CALL",
    );

    return responseIs;
  }

        @override
  Future<Either<Failure, NewPasswordModel?>> enterNewPassword(
      EnterNewPasswordParam functionParam) {
    ServiceRunner<Failure, NewPasswordModel?> sR =
        ServiceRunner(_networkInfo);
    Future<Either<Failure, NewPasswordModel?>> responseIs =
        sR.tryRemoteandCatch(
      call: _apiDataSource.enterNewPassword(functionParam),
      errorTitle: "REGISTER API CALL",
    );

    return responseIs;
  }
}