import 'dart:async';

import 'package:flutter/material.dart';
import 'package:najot_talim_app/ui/screens/auth/login_pagr.dart';
import 'package:najot_talim_app/ui/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              height: 400.0,
              width: 400.0,
              child: const Image(
                image: AssetImage(
                  "assets/images/n.png",
                  
                ),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
