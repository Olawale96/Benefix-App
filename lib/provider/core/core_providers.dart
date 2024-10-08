// provider to create the instant and for dependency injection
import 'package:benefixs/core/api/network_info/network_info.dart';
import 'package:benefixs/core/api/network_request/network_request.dart';
import 'package:benefixs/core/api/network_retry/network_retry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkInfoProvider = Provider<NetworkInfo>((ref) => NetworkInfoImpl());
final networkRequestProvider =
    Provider<NetworkRequest>((ref) => NetworkRequestImpl());
final networkRetryProvider =
    Provider<NetworkRetry>((ref) => NetworkRetryImpl());
