import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:benefixs/core/api/exceptions/exceptions.dart';
import 'package:benefixs/core/api/failures/failures.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';



import '../network_info/network_info.dart';

class ServiceRunner<Failure, T> {
  NetworkInfo networkInfo;
  static int loggedout = 0;

  ServiceRunner(this.networkInfo);

  Future<Either<Failure, T>> tryRemoteandCatch({
    required Future<T> call,
    required String errorTitle,
    bool stopTimeOut = false,
    bool navigateout = true,
    int timeout = 30,
    Future<T> Function()? localFallback,
  }) async {
    // If local fallback is provided, fetch the local data first
    if (localFallback != null) {
      try {
        // Return the local data immediately
        final localData = await localFallback();
        if (localData != null) {
          // Call the API in the background
          _callApiInBackground(
              call: call,
              errorTitle: errorTitle,
              stopTimeOut: stopTimeOut,
              timeout: timeout,
              localFallback: localFallback);
          return Right(localData);
        } else {
          throw ();
        }
      } catch (e) {
        // If fetching local data fails, proceed with the API call
        return _callApiAndHandleExceptions(
            call: call,
            errorTitle: errorTitle,
            stopTimeOut: stopTimeOut,
            timeout: timeout,
            localFallback: localFallback);
      }
    } else {
      // If no local fallback is provided, proceed with the API call
      return _callApiAndHandleExceptions(
          call: call,
          errorTitle: errorTitle,
          stopTimeOut: stopTimeOut,
          timeout: timeout,
          localFallback: localFallback);
    }
  }

  void _callApiInBackground({
    required Future<T> call,
    required String errorTitle,
    bool stopTimeOut = false,
    int timeout = 30,
    Future<T> Function()? localFallback,
  }) {
    Future.microtask(() async {
      await _callApiAndHandleExceptions(
          call: call,
          errorTitle: errorTitle,
          stopTimeOut: stopTimeOut,
          timeout: timeout,
          localFallback: localFallback);
    });
  }

  Future<Either<Failure, T>> _callApiAndHandleExceptions({
    required Future<T> call,
    required String errorTitle,
    bool stopTimeOut = false,
    bool navigateout = true,
    int timeout = 30,
    Future<T> Function()? localFallback,
  }) async {
    if (!await networkInfo.isConnected && localFallback != null) {
      return handleNoNetwork(localFallback, errorTitle);
    } else {
      try {
        return Right(stopTimeOut
            ? await call
            : await call.timeout(Duration(seconds: timeout), onTimeout: () {
                throw TimeoutException('Time out exception.');
              }));
      } on HandshakeException catch (e) {
        return handleException(
            e,
            errorTitle,
            "Secure connection error. Please check your network settings.",
            localFallback);
      } on SocketException catch (e) {
        return handleException(e, errorTitle,
            "Network error. Please check your connection.", localFallback);
      } on FormatException catch (e) {
        return handleException(e, errorTitle,
            "Error occured from server, try again later", localFallback);
      } on TimeoutException catch (e) {
        return handleException(
            e,
            errorTitle,
            "Failed to connect.\nCheck your internet connection.",
            localFallback);
      } on APIErrorException catch (e) {
        String message = e.message;
        return handleException(e, errorTitle, message, localFallback);
      } on Exception catch (e) {
        String message = e.toString();
        if (e.toString().contains("401") || e.toString() == "401") {
          if (navigateout && loggedout == 0) {
            loguserout();
          }
          loggedout = 1;
        }
        return handleException(e, errorTitle, message, localFallback);
      }
    }
  }

  Future<Either<Failure, T>> handleException(
    Exception e,
    String errorTitle,
    String message,
    Future<T> Function()? localFallback,
  ) async {
    if (localFallback != null) {
      final localResult = await localFallback();
      if (localResult == null) {
        return Left(CommonFailure(errorTitle, "Local fallback data is null")
            as Failure);
      }
      return Right(localResult);
    }
    return Left(CommonFailure(errorTitle, message) as Failure);
  }

  Future<Either<Failure, T>> handleNoNetwork(
    Future<T> Function()? localFallback,
    String errorTitle,
  ) async {
    if (localFallback != null) {
      final localResult = await localFallback();
      if (localResult == null) {
        return Left(CommonFailure(errorTitle, "Local fallback data is null")
            as Failure);
      }
      return Right(localResult);
    }
    return Left(InternetFailure(errorTitle, 'No Internet access') as Failure);
  }
}
