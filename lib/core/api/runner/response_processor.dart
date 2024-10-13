import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:benefixs/core/api/exceptions/exceptions.dart';
import 'package:http/http.dart';

// Future<T> processResponse<T>({
//   required Response response,
//   // this is the function used to do the setrialization
//   required T Function(dynamic) serializer,

//   // This is the code to check for in the response
//   int successCode = 200,
//   // This is the code to check for in the response
//   int authCode = 401,
//   // The map is the error serialized
//   Exception Function(dynamic)? serializeError,
// }) async {
//   try {
//     if (response.statusCode == successCode) {
//       final data = json.decode(response.body);
//       // since all API has status message
//       if (data['status'] == true) {
//         T result = serializer(data);
//         return result;
//       } else {
//         throw APIErrorException(data['message']);
//       }
//     } else if (response.statusCode == authCode) {
//       throw Exception('Unauthorized: ${response.statusCode}');
//     } else if (response.statusCode == 400 ||
//         response.statusCode == 500 ||
//         response.statusCode == 422) {
//       final data = json.decode(response.body);
//       throw APIErrorException(data['message']);
//     } else {
//       final data = json.decode(response.body);

//       // Check if there's a custom error serializer function provided
//       if (serializeError != null) {
//         throw serializeError(data);
//       } else {
//         // Handle generic errors based on response structure
//         final Map<String, dynamic> errors = data;
//         if (errors.containsKey('message')) {
//           // Handle specific error format
//           throw Exception(errors['message']);
//         } else if (errors.isNotEmpty) {
//           // Handle general error messages
//           List<String> errorList = [];
//           errors.forEach((key, value) {
//             errorList.add('$key: $value');
//           });
//           throw Exception(errorList.join('\n'));
//         } else {
//           // Default error handling
//           throw Exception('Unexpected error occurred: ${response.statusCode}');
//         }
//       }
//     }
//   } on SocketException catch (e) {
//     // Handle network-related errors
//     throw Exception('Network error: $e');
//   } catch (e) {
//     if (e is APIErrorException) {
//       // Handle the APIErrorException
//       throw APIErrorException(e.message);
//     } else {
//       throw Exception('Error parsing response: $e');
//     }
//   }
// }

Future<T> processResponse<T>({
  required Response response,
  required T Function(dynamic) serializer,
  int successCode = 200,
  int authCode = 401,
  Exception Function(dynamic)? serializeError,
}) async {
  try {
    final data = json.decode(response.body);

    if (response.statusCode == successCode) {
      // If the response indicates success and 'message' is present
      if (data['message'] != null) {
        T result = serializer(data);
        return result;
      } else {
        throw APIErrorException('Unexpected success response format');
      }
    } else if (response.statusCode == authCode) {
      throw Exception('Unauthorized: ${response.statusCode}');
    } else if (response.statusCode == 400 ||
        response.statusCode == 500 ||
        response.statusCode == 422 ||
        response.statusCode == 302) {
      throw APIErrorException(data['message'] ?? 'Unknown error');
    } else {
      // Handle other errors with 'message'
      if (serializeError != null) {
        throw serializeError(data);
      } else if (data.containsKey('message')) {
        throw Exception(data['message']);
      } else {
        throw Exception('Unexpected error occurred: ${response.statusCode}');
      }
    }
  } on SocketException catch (e) {
    throw Exception('Network error: $e');
  } catch (e) {
    if (e is APIErrorException) {
      throw APIErrorException(e.message);
    } else {
      throw Exception('Error parsing response: $e');
    }
  }
}
