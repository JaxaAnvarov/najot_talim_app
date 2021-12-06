import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:najot_talim_app/size_config.dart';
import 'package:najot_talim_app/ui/screens/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  bool parolni_korish = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Login Page',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Sans',
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Sans',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      'Dasturlash',
                      textStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RotateAnimatedText(
                      'Dizayn',
                      textStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RotateAnimatedText(
                      'Marketing',
                      textStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0)),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintText: 'Enter Your Email',
                        labelText: 'Email',
                        prefixIcon: IconButton(
                          icon: const Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20.0)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0)),
                    child: TextFormField(
                      obscureText: !parolni_korish,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                        prefixIcon: IconButton(
                          icon: const Icon(
                            Icons.lock_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              parolni_korish = !parolni_korish;
                            });
                          },
                          icon: parolni_korish
                              ? const Icon(
                                  Icons.visibility,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20.0)),
            AnimatedButton(
              onPress: () {
                print("Najim nma gapla");
                addUser();
                Future.delayed(
                  const Duration(seconds: 2),
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                );
              },
              height: getProportionateScreenHeight(50.0),
              width: getProportionateScreenWidth(200.0),
              text: 'Next',
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderRadius: 50,
              borderWidth: 2,
            ),
          ],
        ),
      ),
    );
  }

  addUser() async {
    if (_emailController.text.isNotEmpty) {
      await _firestore.collection('registered_people').add(
        {
          'email': _emailController.text,
          'password': _passwordController.text,
        },
      );
      _scaffoldMessanger(
        "Comment Has Added",
        Colors.greenAccent,
      );
    } else {
      _scaffoldMessanger(
        "Error",
        Colors.red,
      );
    }
  }

  _scaffoldMessanger(String messanges, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(
          messanges.toString(),
        ),
      ),
    );
  }
}
