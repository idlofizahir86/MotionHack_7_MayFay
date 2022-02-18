import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/register');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite1Color,
      body: Center(
        child: Image.asset(
          'assets/mayfay_logo.png',
          width: 294,
        ),
      ),
    );
  }
}
