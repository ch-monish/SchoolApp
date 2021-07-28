import 'package:flutter/material.dart';
import 'package:schoolapp/pages/econtent.dart';

class Coursepage extends StatefulWidget {
  final Course course;
  Coursepage({Key? key, required this.course}) : super(key: key);

  @override
  _CoursepageState createState() => _CoursepageState(course);
}

class _CoursepageState extends State<Coursepage> {
  final Course course;
  _CoursepageState(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
    );
  }
}
