// import 'dart:developer';

// import 'package:benefixs/core/api/api/api_endpoints.dart';
// import 'package:benefixs/core/api/network_request/network_request.dart';
// import 'package:benefixs/core/api/network_retry/network_retry.dart';
// import 'package:benefixs/core/api/runner/response_processor.dart';
// import 'package:benefixs/core/function_files.dart';
// import 'package:benefixs/core/typography/text_styles.dart';

// import 'package:benefixs/model/auth/body/register_param.dart';
// import 'package:benefixs/model/auth/response/register_model.dart';

import 'dart:developer';
import 'dart:io';

import 'package:benefixs/core/api/api/api_endpoints.dart';
import 'package:benefixs/core/api/network_request/network_request.dart';
import 'package:benefixs/core/api/network_retry/network_retry.dart';
import 'package:benefixs/core/api/runner/response_processor.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/local_db.dart';
import 'package:benefixs/core/typography/text_styles.dart';
import 'package:benefixs/data/remote_source/remote_source_abstract.dart';
import 'package:benefixs/model/auth/body/enter_new_password_param.dart';
import 'package:benefixs/model/auth/body/forgotpassword_param.dart';
import 'package:benefixs/model/auth/body/login_param.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/forgot_password_model.dart';
import 'package:benefixs/model/auth/response/login_model.dart';
import 'package:benefixs/model/auth/response/new_password_model.dart';
import 'package:benefixs/model/auth/response/register_model.dart';
import 'package:benefixs/provider/general.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteSourceAbstract {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  AuthRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<RegisterModel> register(
      RegisterParam functionParam, WidgetRef ref) async {
    String url = 'https://apiv1.benefixapp.com/api/register';
    // Endpoint.registerUser;
    final body = {
      "username": functionParam.username,
      "email": functionParam.email,
      "password": functionParam.password,
      "password_confirmation": functionParam.password,
    };

    try {
      final response = await networkRetry.networkRetry(
          () => networkRequest.post(
                url,
                body: body,
              ),
          maxAttempts: MainAppTextClass.noRetry,
          initialDelay: const Duration(seconds: 1),
          maxDelay: const Duration(seconds: 17),
          retryIf: (e) => shouldRetry(e));
      log('this is the status code: ${response.statusCode}');
      log('this is the body: ${response.body}');
      if (response.statusCode == 302) {
        ref.watch(error302Provider.notifier).state = true;
        log('error 302? = ${ref.watch(error302Provider.notifier).state = true}');
      }

      final responseData = processResponse(
          response: response,
          serializer: (data) {
            return RegisterModel.fromJson(data);
          });
      return responseData;
    } catch (e, stackTrace) {
      showDebugError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<LoginModel> logIn(
    LoginParam functionParam, WidgetRef ref
  ) async {
    String url = 'https://apiv1.benefixapp.com/api/login';
    // Endpoint.registerUser;
    final body = {
      "email": functionParam.email,
      "password": functionParam.password,
    };

    try {
      final response = await networkRetry.networkRetry(
          () => networkRequest.post(
                url,
                body: body,
              ),
          maxAttempts: MainAppTextClass.noRetry,
          initialDelay: const Duration(seconds: 1),
          maxDelay: const Duration(seconds: 17),
          retryIf: (e) => shouldRetry(e));
      log('this is the status code: ${response.statusCode}');
      log('this is the body: ${response.body}');
        if (response.statusCode == 302) {
        ref.watch(error302Provider.notifier).state = true;
        log('error 302? = ${ref.watch(error302Provider.notifier).state = true}');
      }
      final responseData = processResponse(
          response: response,
          serializer: (data) {
            LocalDB.saveToken(LoginModel.fromJson(data).data!.token!);
            return LoginModel.fromJson(data);
          });
      return responseData;
    } catch (e, stackTrace) {
      showDebugError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<ForgotPasswordModel> forgotPassword(
    ForgotPasswordParam functionParam,
  ) async {
    String url = 'https://apiv1.benefixapp.com/api/forgot-password';
    // Endpoint.registerUser;
    final body = {
      "email": functionParam.email,
    };

    try {
      final response = await networkRetry.networkRetry(
          () => networkRequest.post(
                url,
                body: body,
              ),
          maxAttempts: MainAppTextClass.noRetry,
          initialDelay: const Duration(seconds: 1),
          maxDelay: const Duration(seconds: 17),
          retryIf: (e) => shouldRetry(e));
      log('this is the status code: ${response.statusCode}');
      log('this is the body: ${response.body}');

      final responseData = processResponse(
          response: response,
          serializer: (data) {
            LocalDB.saveResetToken(
                ForgotPasswordModel.fromJson(data).data!.resetToken!);
            return ForgotPasswordModel.fromJson(data);
          });
      return responseData;
    } catch (e, stackTrace) {
      showDebugError(e, stackTrace);
      rethrow;
    }
  }

  @override
  Future<NewPasswordModel> enterNewPassword(
    EnterNewPasswordParam functionParam,
  ) async {
    String url = 'https://apiv1.benefixapp.com/api/reset-password';
    String? token = await LocalDB.getResetToken();
    String? email = await LocalDB.getEmail();
    // Endpoint.registerUser;
    final body = {
      "token": token,
      "password": functionParam.newpassword,
      "password_confirmation": functionParam.confirmpassword,
      "email": email,
    };
    log('this is th body: $body');
    try {
      final response = await networkRetry.networkRetry(
          () => networkRequest.post(
                url,
                body: body,
                headers: {
                  HttpHeaders.authorizationHeader: 'Bearer $token',
                },
              ),
          maxAttempts: MainAppTextClass.noRetry,
          initialDelay: const Duration(seconds: 1),
          maxDelay: const Duration(seconds: 17),
          retryIf: (e) => shouldRetry(e));
      log('this is the status code: ${response.statusCode}');
      log('this is the body: ${response.body}');

      final responseData = processResponse(
          response: response,
          serializer: (data) {
            return NewPasswordModel.fromJson(data);
          });
      return responseData;
    } catch (e, stackTrace) {
      showDebugError(e, stackTrace);
      rethrow;
    }
  }
}
