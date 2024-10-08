import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Onboarding()));
    });
    // TODO: implement initState
    super.initState();
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
