import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Event {
  // final DateTime date;
  final String Title;
  // final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final DateTime starttime;
  final DateTime endtime;

  Event(@required this.Title, this.starttime, this.endtime);
}
