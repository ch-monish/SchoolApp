import 'package:flutter/material.dart';
import 'package:schoolapp/pages/login.dart';
import 'package:schoolapp/pages/verification.dart';
import 'package:schoolapp/pages/changeschool.dart';

void main() => runApp(MaterialApp(
      home: Login(),
      routes: {
        // '/': (context) => Login(),
        '/home': (context) => Login(),
        '/verification': (context) => Verification(),
        '/changeschool': (context) => ChangeSchool(),
      },
    ));
