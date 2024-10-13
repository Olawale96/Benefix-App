import 'package:benefixs/model/auth/body/enter_new_password_param.dart';
import 'package:benefixs/model/auth/body/forgotpassword_param.dart';
import 'package:benefixs/model/auth/body/login_param.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/forgot_password_model.dart';
import 'package:benefixs/model/auth/response/login_model.dart';
import 'package:benefixs/model/auth/response/new_password_model.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AuthRemoteSourceAbstract {
   Future<RegisterModel> register(RegisterParam functionParam, WidgetRef ref);
   Future<LoginModel> logIn(LoginParam functionParam,WidgetRef ref);
      Future<ForgotPasswordModel> forgotPassword(ForgotPasswordParam functionParam,);
     Future<NewPasswordModel> enterNewPassword(EnterNewPasswordParam functionParam,);
      }