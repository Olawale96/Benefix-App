import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepoAbstract {
  Future<Either<Failure, RegisterModel?>> register(
      RegisterParam functionParam);}