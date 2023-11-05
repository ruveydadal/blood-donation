import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: 500,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("assets/blood.png"),
          ),
        ),
        SizedBox(
          height: 120,
        ),
        loginButton("Sign in"),
        SizedBox(
          height: 25,
        ),
        loginButton("Create Account"),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  "Learn More",
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/survey");
                  },
                  child: Text(
                    "Skip now ->",
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

Widget loginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}
