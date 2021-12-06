import 'package:flutter/cupertino.dart';

abstract class Service {
  Future dataStorage();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controlleKey = GlobalKey<FormFieldState>();
  Future isLogget();
}

// class GetUser extends Service {
//   @override
//   Future dataStorage() {}
//   @override
//   Future isLogget() {}
// }
