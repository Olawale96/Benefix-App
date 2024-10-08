import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/register_model.dart';

abstract class AuthRemoteSourceAbstract {

    Future<RegisterModel> register(RegisterParam functionParam);
}