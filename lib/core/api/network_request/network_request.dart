import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

abstract class NetworkRequest {
  Future<Response> get(
    String url, {
    Object? body,
    Map<String, String>? headers,
    int timeOut = 5,
  });
  Future<Response> post(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding});

  Future<Response> postFiles(
    String url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    List<http.MultipartFile>? files,
    int timeOut = 10,
  });
  
  Future<Response> patch(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding});
  Future<Response> put(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding});
  Future<Response> delete(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding});
}

class NetworkRequestImpl implements NetworkRequest {
  static final NetworkRequestImpl _instance = NetworkRequestImpl._();
  static final _client = Client();

  factory NetworkRequestImpl() => _instance;

  NetworkRequestImpl._();

  @override
  @override
  Future<Response> get(
    String url, {
    Object? body,
    Map<String, String>? headers,
    int timeOut = 5,
  }) async {
    try {
      return await _client
          .get(Uri.parse(url), headers: headers)
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });
    } catch (error) {
      throw TimeoutException('Error from server: $error');
    }
  }

  @override
  Future<Response> post(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding}) async {
    try {
      return await _client
          .post(Uri.parse(url),
              headers: headers, body: body, encoding: encoding)
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });
    } catch (error) {
      throw TimeoutException('Error from server: $error');
    }
  }

  @override
  Future<Response> postFiles(
    String url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    List<http.MultipartFile>? files,
    int timeOut = 5,
  }) async {
    try {
      var uri = Uri.parse(url);
      var request = http.MultipartRequest('POST', uri);

      if (headers != null) {
        request.headers.addAll(headers);
      }

      if (body != null) {
        request.fields.addAll(body);
      }

      if (files != null) {
        request.files.addAll(files);
      }

      var streamedResponse = await request
          .send()
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });

      return await http.Response.fromStream(streamedResponse);
    } catch (error) {
      throw Exception('Error from server: $error');
    }
  }

  @override
  Future<Response> patch(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding}) async {
    try {
      return await _client
          .patch(Uri.parse(url),
              headers: headers, body: body, encoding: encoding)
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });
      ;
    } catch (error) {
      throw TimeoutException('Error from server: $error');
    }
  }

  @override
  Future<Response> put(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding}) async {
    try {
      return await _client
          .put(Uri.parse(url), headers: headers, body: body, encoding: encoding)
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });
      ;
    } catch (error) {
      throw TimeoutException('Error from server: $error');
    }
  }

  @override
  Future<Response> delete(String url,
      {Map<String, String>? headers,
      Object? body,
      int timeOut = 5,
      Encoding? encoding}) async {
    try {
      return await _client
          .delete(Uri.parse(url),
              headers: headers, body: body, encoding: encoding)
          .timeout(Duration(seconds: timeOut), onTimeout: () {
        throw TimeoutException('Request timed out');
      });
      ;
    } catch (error) {
      throw TimeoutException('Error from server: $error');
    }
  }
}
