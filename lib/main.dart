import 'package:flutter/material.dart';
import 'package:schoolapp/pages/login.dart';
import 'package:schoolapp/pages/verification.dart';
import 'package:schoolapp/pages/changeschool.dart';
import 'package:schoolapp/pages/homepage.dart';
import 'package:schoolapp/pages/homework.dart';
import 'package:schoolapp/pages/notification.dart';
import 'package:schoolapp/pages/examresult.dart';
import 'package:schoolapp/pages/buslocation.dart';
import 'package:schoolapp/pages/chooseuser.dart';
import 'package:schoolapp/pages/econtent.dart';
import 'package:schoolapp/pages/coursepage.dart';


void main() => runApp(MaterialApp(
      home: Chooseuser(),
      routes: {
        // '/': (context) => Login(),
        '/chooseuser': (context) => Chooseuser(),
        '/login': (context) => Login(),
        '/verification': (context) => Verification(),
        '/changeschool': (context) => ChangeSchool(),
        '/homepage': (context) => Homepage(),
        '/homework': (context) => Homework(),
        '/notification': (context) => Notifications(),
        '/examresult': (context) => Examresult(),
        '/buslocation': (context) => Buslocation(),
        '/econtent': (context) => Econtent(),
        '/courepage': (context) => Coursepage(course:new Course()),
      },
    ));
