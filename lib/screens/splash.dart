import 'dart:developer';

import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/local_db.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:benefixs/screens/onboarding/onboarding.dart'; // Replace with your actual screen import
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _controller;
  String? _token;

  @override
  void initState() {
    super.initState();

    _initialize();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
  }

  Future<void> _initialize() async {
    _token = await LocalDB.getToken();
    log('stored user token: $_token');

    Future.delayed(const Duration(seconds: 7), () {
      if (_token == null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: slideFromTop(
        controller: _controller,
        child: Center(child: Image.asset('images/benefix.png')),
      ),
    );
  }
}
