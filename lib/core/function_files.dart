
import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:benefixs/main.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



loguserout() async {
  // ProviderContainer container = ProviderContainer();

  // final apiLocalDataSource = container.read(authenticationLocalSourceProvider);
  // container.read(authenticationLocalSourceProvider);
  // await apiLocalDataSource.clearAuthData();
  navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => const SignIn()));
  // AllApiCalls.resetData();
}
int showError = 1;
 bool shouldRetry(e) {
  return e is http.ClientException ||
      e is TimeoutException ||
      e is HandshakeException ||
      e is SocketException;
}

showDebugError(e, stackTrace) {
  if (showError == 1) {
    log(e.toString());
    log(stackTrace.toString());
  }
}

traceErrorMessage(message) {
  if (showError == 1) {
    log(message.toString());
    print(message.toString());
  }
}

Widget slideFromTop({
  required Widget child,
  required AnimationController controller,
  Curve curve = Curves.elasticOut,
  Duration duration = const Duration(milliseconds: 800),
}) {
  final Animation<Offset> slideAnimation = Tween<Offset>(
    begin: const Offset(0, -1), 
    end: Offset.zero,           
  ).animate(CurvedAnimation(parent: controller, curve: curve));

  return SlideTransition(
    position: slideAnimation,
    child: child,
  );
}



Widget slideFromLeft({
  required Widget child,
  required AnimationController controller,
  Curve curve = Curves.easeInOut,
  Duration duration = const Duration(milliseconds: 800),
}) {
  final Animation<Offset> slideAnimation = Tween<Offset>(
    begin: const Offset(-1, 0), 
    end: Offset.zero,           
  ).animate(CurvedAnimation(parent: controller, curve: curve));

  return SlideTransition(
    position: slideAnimation,
    child: child,
  );
}




Widget customAnimatedPositioned({
  required bool isVisible, 
  required Widget child,
  Duration duration = const Duration(seconds: 3),
  Curve curve = Curves.elasticOut,
  required double initialLeft,  
  required double finalLeft,  
  required double initialRight, 
  required double finalRight,  
  required double initialBottom, 
  required double finalBottom,   
}) {
  return AnimatedPositioned(
    duration: duration,
    curve: curve,
    left: isVisible ? finalLeft : initialLeft,
    right: isVisible ? finalRight : initialRight,
    bottom: isVisible ? finalBottom : initialBottom,
    child: child,
  );
}


