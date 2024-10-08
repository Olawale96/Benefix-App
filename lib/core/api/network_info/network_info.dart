import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl();

  @override
  Future<bool> get isConnected async {
    try {
      final connectivityResults = await Connectivity().checkConnectivity();
      for (var result in connectivityResults) {
        // Check if the connectivity result is valid
        if (ConnectivityResult.values.contains(result)) {
          return true; // Return false if any result is not valid
        }
      }
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (e) {
      return false;
    } catch (e) {
      return false;
    }
  }
}
