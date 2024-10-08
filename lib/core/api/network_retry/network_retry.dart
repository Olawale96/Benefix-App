import 'dart:async';

import 'package:retry/retry.dart';

abstract class NetworkRetry {
  Future<T> networkRetry<T>(
    FutureOr<T> Function() function, {
    int maxAttempts,
    Duration maxDelay,
    Duration initialDelay,
    bool Function(Exception)? retryIf,
  });
}

// class NetworkRetryImpl implements NetworkRetry {
//   // The _instance variable holds the single instance of the NetworkRequestImpl class.
//   static NetworkRetryImpl? _instance;

//   // The factory constructor _instance ensures that only one instance is created and returned when the NetworkRequestImpl class is instantiated.
//   // It allows the class to control the creation of its instances. In this case, the constructor returns a reference to the private _instance field.
//   factory NetworkRetryImpl() {
//     _instance ??= NetworkRetryImpl._(); // if null create instant
//     return _instance!;
//   }
//   // This constructor is used to create an instance of the NetworkRequestImpl class without directly invoking its regular constructor
//   // The private constructor NetworkRequestImpl._() prevents the creation of instances of the NetworkRequestImpl class from outside the class itself. This ensures that the only way to obtain an instance is through the factory constructor _instance.
//   NetworkRetryImpl._();

//   @override
//   Future<T> networkRetry<T>(
//     FutureOr<T> Function() function, {
//     int maxAttempts = 5,
//     Duration maxDelay = const Duration(seconds: 4),
//     bool Function(Exception)? retryIf,
//   }) {
//     return retry(function,
//         maxAttempts: maxAttempts, maxDelay: maxDelay, retryIf: retryIf);
//   }
// }

class NetworkRetryImpl implements NetworkRetry {
  static NetworkRetryImpl? _instance;

  factory NetworkRetryImpl() {
    _instance ??= NetworkRetryImpl._();
    return _instance!;
  }

  NetworkRetryImpl._();

  @override
  Future<T> networkRetry<T>(
    FutureOr<T> Function() function, {
    int maxAttempts = 5,
    Duration initialDelay = const Duration(milliseconds: 500),
    Duration maxDelay = const Duration(seconds: 16),
    bool Function(Exception)? retryIf,
  }) async {
    // (e) => e is SocketException || e is TimeoutException,
    final retryOptions = RetryOptions(
      maxAttempts: maxAttempts,
      delayFactor: initialDelay,
      maxDelay: maxDelay,
    );

    return await retryOptions.retry(
      () async {
        return await function();
      },
      retryIf: (e) => retryIf == null || retryIf(e),
    );
  }
}
