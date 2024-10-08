import 'dart:developer';

import 'package:benefixs/core/api/api/api_endpoints.dart';
import 'package:benefixs/core/api/network_request/network_request.dart';
import 'package:benefixs/core/api/network_retry/network_retry.dart';
import 'package:benefixs/core/api/runner/response_processor.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/typography/text_styles.dart';
import 'package:benefixs/data/remote_source/auth_remots_source_abstract.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/model/auth/response/register_model.dart';

// class AuthRemoteDataSourceImpl implements AuthRemoteSourceAbstract {
//   final NetworkRequest networkRequest;
//   final NetworkRetry networkRetry;

//   AuthRemoteDataSourceImpl({
//     required this.networkRequest,
//     required this.networkRetry,
//   });

//   @override
//   Future<RegisterModel> register(RegisterParam functionParam) async {
//     String url = 'https://apiv1.benefixapp.com/api/register';

//     final body = {
//       "username": functionParam.username,
//       "email": functionParam.email,
//       "password": functionParam.password,
//       "password_confirmation": functionParam.password_confirmation,
//     };
//        log('this is body : $body');
//     try {
//       final response = await networkRetry.networkRetry(
//           () => networkRequest.post(
//                 url,
//                 body: body,
//               ),
//           maxAttempts: MainAppTextClass.noRetry,
//           initialDelay: const Duration(seconds: 1),
//           maxDelay: const Duration(seconds: 17),
//           retryIf: (e) => shouldRetry(e));
//                  log('this is response body : ${response.body}');

//       final responseData = processResponse(
//           response: response,
//           serializer: (data) {
//             return RegisterModel.fromJson(data);
//           });
//       return responseData;
//     } catch (e, stackTrace) {
//       showDebugError(e, stackTrace);
//       rethrow;
//     }
//   }
// }

import 'dart:convert';

class AuthRemoteDataSourceImpl implements AuthRemoteSourceAbstract {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  AuthRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<RegisterModel> register(RegisterParam functionParam) async {
    String url = 'https://apiv1.benefixapp.com/api/register';
    final body = {
      "username": functionParam.username,
      "email": functionParam.email,
      "password": functionParam.password,
      "password_confirmation": functionParam.passwordConfirmation,
    };
    log('Request body: $body');

    try {
      final response = await networkRetry.networkRetry(
        () => networkRequest.post(
          url,
          headers: {
            'Content-Type': 'application/json', 
          },
          body: jsonEncode(body), 
        ),
        maxAttempts: MainAppTextClass.noRetry,
        initialDelay: const Duration(seconds: 1),
        maxDelay: const Duration(seconds: 17),
        retryIf: (e) => shouldRetry(e),
      );

      log('Response status code: ${response.statusCode}');
      log('Response only: ${response.body}');
            


      // Process the response
      final responseData = processResponse(
        response: response,
        serializer: (data) {
          return RegisterModel.fromJson(data);
        },
      );

      return responseData;
    } catch (e, stackTrace) {
      showDebugError(e, stackTrace);
      rethrow;
    }
  }
}


