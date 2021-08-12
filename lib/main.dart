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
import 'package:schoolapp/pages/actualcalender.dart';
import 'package:schoolapp/pages/payment/feepayment.dart';
import 'package:schoolapp/pages/payment/paymentcontents.dart';
import 'package:schoolapp/pages/payment/payment.dart';
import 'package:schoolapp/pages/payment/paymentaccreditation.dart';
import 'package:schoolapp/pages/payment/paymentmethod.dart';
import 'package:schoolapp/pages/dayview.dart';

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
        '/coursepage': (context) => Coursepage(),
        '/actualcalender': (context) => Actualcalender(),
        '/feepayment': (context) => Feepayment(),
        '/paymentcontents': (context) => Paymentcontents(),
        '/payment': (context) => Payment(),
        '/paymentaccreditation': (context) => Paymentaccreditation(),
        '/paymentmethod': (context) => Paymentmethod(),
        '/dayview': (context) => Dayview(),
      },
    ));
