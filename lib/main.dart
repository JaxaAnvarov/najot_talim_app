import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:najot_talim_app/ui/screens/auth/login_pagr.dart';
import 'package:najot_talim_app/ui/screens/splash/splash_screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
