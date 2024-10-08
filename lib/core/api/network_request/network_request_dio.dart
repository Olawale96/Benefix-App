// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart' as http;

// // provider to create the instant and for dependency injection

// final networkRequestProvider =
//     Provider<NetworkRequest>((ref) => NetworkRequestImpl());

// abstract class NetworkRequest {
//   Future<http.Response> get(
//     String url, {
//     Object? body,
//     Map<String, String>? headers,
//   });

//   Future<http.Response> post(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     int timeOut = 60,
//     Encoding? encoding,
//   });

//   Future<http.Response> patch(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     Encoding? encoding,
//   });

//   Future<http.Response> put(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     Encoding? encoding,
//   });

//   Future<http.Response> delete(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     Encoding? encoding,
//   });
// }

// class NetworkRequestImpl implements NetworkRequest {
//   // The _instance variable holds the single instance of the NetworkRequestImpl class.
//   static NetworkRequestImpl? _instance;

//   // The factory constructor _instance ensures that only one instance is created and returned when the NetworkRequestImpl class is instantiated.
//   // It allows the class to control the creation of its instances. In this case, the constructor returns a reference to the private _instance field.
//   factory NetworkRequestImpl() {
//     _instance ??= NetworkRequestImpl._(); // if null create instant
//     return _instance!;
//   }
//   // This constructor is used to create an instance of the NetworkRequestImpl class without directly invoking its regular constructor
//   // The private constructor NetworkRequestImpl._() prevents the creation of instances of the NetworkRequestImpl class from outside the class itself. This ensures that the only way to obtain an instance is through the factory constructor _instance.
//   NetworkRequestImpl._();
//   final dio = Dio();

//   @override
//   Future<http.Response> get(
//     String url, {
//     Object? body,
//     Map<String, String>? headers,
//   }) async {
//     // Persistent Connection for Multiple Calls to Same Server:
//     dio.options.connectTimeout =
//         const Duration(seconds: 20); // Convert to milliseconds
//     dio.options.receiveTimeout = const Duration(seconds: 20);

//     // Interceptor for Early Error Handling (Optional):
//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // Perform pre-request checks or modifications
//         return handler.next(options);
//       },
//       onError: (DioException err, handler) {
//         // Handle errors early to avoid unnecessary delays
//         print('DioError: $err');
//         return handler.next(err);
//       },
//     ));

//     try {
//       final response = await dio.get(
//         url,
//         options: Options(
//           headers: headers,
//         ),
//       );
//       return http.Response(response.data, response.statusCode ?? 0);
//     } on DioExceptionType catch (e) {
//       if (e == DioExceptionType.connectionTimeout ||
//           e == DioExceptionType.receiveTimeout) {
//         throw TimeoutException('Time Out Error');
//       } else {
//         // Handle other Dio errors appropriately
//         rethrow;
//       }
//     }
//   }

//   @override
//   Future<http.Response> post(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     int timeOut = 20, // Adjusted timeout for faster error handling
//     Encoding? encoding,
//   }) async {
//     // Persistent Connection for Multiple Calls to Same Server:
//     dio.options.connectTimeout =
//         Duration(seconds: timeOut); // Convert to milliseconds
//     dio.options.receiveTimeout = Duration(seconds: timeOut);

//     // Interceptor for Early Error Handling (Optional):
//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // Perform pre-request checks or modifications
//         return handler.next(options);
//       },
//       onError: (DioException err, handler) {
//         // Handle errors early to avoid unnecessary delays
//         print('DioError: $err');
//         return handler.next(err);
//       },
//     ));

//     try {
//       final response = await dio.post(
//         url,
//         data: body,
//         options: Options(
//           headers: headers,
//           responseType: ResponseType.json,
//           validateStatus: (statusCode) {
//             if (statusCode == null) {
//               return false;
//             }
//             if (statusCode == 400) {
//               // your http status code
//               return true;
//             } else {
//               return statusCode >= 200 && statusCode < 300;
//             }
//           },
//         ),
//       );
//       print(body.toString());
//       print(response.data);

//       return http.Response(response.data, response.statusCode ?? 0);
//     } on DioExceptionType catch (e) {
//       if (e == DioExceptionType.connectionTimeout ||
//           e == DioExceptionType.receiveTimeout) {
//         throw TimeoutException('Time Out Error');
//       } else {
//         // Handle other Dio errors appropriately
//         rethrow;
//       }
//     }
//   }

//   @override
//   Future<http.Response> patch(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     Encoding? encoding,
//   }) async {
//     // Persistent Connection for Multiple Calls to Same Server:
//     dio.options.connectTimeout =
//         const Duration(seconds: 20); // Convert to milliseconds
//     dio.options.receiveTimeout = const Duration(seconds: 20);

//     // Interceptor for Early Error Handling (Optional):
//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // Perform pre-request checks or modifications
//         return handler.next(options);
//       },
//       onError: (DioException err, handler) {
//         // Handle errors early to avoid unnecessary delays
//         print('DioError: $err');
//         return handler.next(err);
//       },
//     ));

//     try {
//       final response = await dio.patch(
//         url,
//         options: Options(
//           headers: headers,
//         ),
//       );
//       return http.Response(response.data, response.statusCode ?? 0);
//     } on DioExceptionType catch (e) {
//       if (e == DioExceptionType.connectionTimeout ||
//           e == DioExceptionType.receiveTimeout) {
//         throw TimeoutException('Time Out Error');
//       } else {
//         // Handle other Dio errors appropriately
//         rethrow;
//       }
//     }
//   }

//   @override
//   Future<http.Response> put(String url,
//       {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
//     // Persistent Connection for Multiple Calls to Same Server:
//     dio.options.connectTimeout =
//         const Duration(seconds: 20); // Convert to milliseconds
//     dio.options.receiveTimeout = const Duration(seconds: 20);

//     // Interceptor for Early Error Handling (Optional):
//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // Perform pre-request checks or modifications
//         return handler.next(options);
//       },
//       onError: (DioException err, handler) {
//         // Handle errors early to avoid unnecessary delays
//         print('DioError: $err');
//         return handler.next(err);
//       },
//     ));

//     try {
//       final response = await dio.put(
//         url,
//         data: body,
//         options: Options(
//           headers: headers,
//         ),
//       );
//       return http.Response(response.data, response.statusCode ?? 0);
//     } on DioExceptionType catch (e) {
//       if (e == DioExceptionType.connectionTimeout ||
//           e == DioExceptionType.receiveTimeout) {
//         throw TimeoutException('Time Out Error');
//       } else {
//         // Handle other Dio errors appropriately
//         rethrow;
//       }
//     }
//   }

//   @override
//   Future<http.Response> delete(
//     String url, {
//     Map<String, String>? headers,
//     Object? body,
//     Encoding? encoding,
//   }) async {
//     // Persistent Connection for Multiple Calls to Same Server:
//     dio.options.connectTimeout =
//         const Duration(seconds: 20); // Convert to milliseconds
//     dio.options.receiveTimeout = const Duration(seconds: 20);

//     // Interceptor for Early Error Handling (Optional):
//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // Perform pre-request checks or modifications
//         return handler.next(options);
//       },
//       onError: (DioException err, handler) {
//         // Handle errors early to avoid unnecessary delays
//         print('DioError: $err');
//         return handler.next(err);
//       },
//     ));

//     try {
//       final response = await dio.delete(
//         url,
//         options: Options(
//           headers: headers,
//         ),
//       );
//       return http.Response(response.data, response.statusCode ?? 0);
//     } on DioExceptionType catch (e) {
//       if (e == DioExceptionType.connectionTimeout ||
//           e == DioExceptionType.receiveTimeout) {
//         throw TimeoutException('Time Out Error');
//       } else {
//         // Handle other Dio errors appropriately
//         rethrow;
//       }
//     }
//   }
// }
