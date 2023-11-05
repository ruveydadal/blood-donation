import 'package:flutter/material.dart';
import 'booking.dart';
import 'login.dart';
import 'splash.dart';
import 'survey.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      '/booking': (context) => Booking(),
      '/survey': (context) => Survey()
    },
  ));
}
