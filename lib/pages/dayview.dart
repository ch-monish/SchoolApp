import 'package:flutter/material.dart';
import 'dart:math';
import 'package:schoolapp/classes/attendancerecords.dart';
import 'package:schoolapp/pages/actualcalender.dart';

class Dayview extends StatefulWidget {
  Dayview({Key? key}) : super(key: key);

  @override
  _DayviewState createState() => _DayviewState();
}

class _DayviewState extends State<Dayview> {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> week = [
    '',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    "Sunday"
  ];
  // DateTime datestring = DateTime.now();
  DateTime _vardate = DateTime.now();
  DateTime datestring = DateTime.now();
  // List<String> items = ["a", "b", "c", "d"];
  List<Attendancerecords> data = [
    Attendancerecords(
        "8", "b", "English", 12, 10, 5, DateTime(2021, 08, 01, 08, 00)),
    Attendancerecords(
        "8", "a", "Maths", 12, 10, 5, DateTime(2021, 08, 01, 10, 00)),
    Attendancerecords(
        "8", "c", "Physics", 12, 10, 5, DateTime(2021, 08, 01, 12, 00)),
    Attendancerecords(
        "8", "d", "Computers", 12, 10, 5, DateTime(2021, 08, 01, 13, 00)),
  ];
  List colors = [Colors.blue, Colors.green, Colors.orange, Colors.purple];
  @override
  void initState() {
    // datestring = _vardate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _vardate = ModalRoute.of(context)!.settings.arguments as DateTime;
    setState(() {
      // datestring = DateTime.parse(_vardate.toString());
    });
    // datestring = _vardate;

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                IconData(
                  59483,
                  fontFamily: 'MaterialIcons',
                  matchTextDirection: true,
                ),
                size: 28,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Row(
          children: [
            IconButton(
              icon: Icon(
                IconData(
                  57491,
                  fontFamily: 'MaterialIcons',
                  matchTextDirection: true,
                ),
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  datestring = datestring.subtract(const Duration(days: 1));
                  print(datestring);
                });
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
            Text(
                week[datestring.weekday].substring(0, 3) +
                    ", " +
                    datestring.day.toString() +
                    "" +
                    months[datestring.month - 1].substring(0, 3) +
                    " " +
                    datestring.year.toString(),
                style: TextStyle(color: Colors.white, fontSize: 16)),
            IconButton(
              icon: Icon(
                IconData(
                  57500,
                  fontFamily: 'MaterialIcons',
                  matchTextDirection: true,
                ),
                size: 20,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  datestring = datestring.add(const Duration(days: 1));
                  print(datestring);
                });
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            )
          ],
        ),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.orange[800],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Row(
                children: [
                  Text("Time"),
                  SizedBox(width: 30),
                  Text("Class"),
                ],
              ),
            ),
            Flexible(
                child: GridView.count(
              childAspectRatio: 4 / 1,
              crossAxisCount: 1,
              children: List.generate(data.length, (index) {
                return Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * (0.98),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 5),
                  // color: Colors.yellow,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 9, left: 4),
                          alignment: Alignment.topLeft,
                          child: Text(
                              data[index]
                                      .starttime
                                      .hour
                                      .toString()
                                      .padLeft(2, '0') +
                                  ":" +
                                  data[index]
                                      .starttime
                                      .minute
                                      .toString()
                                      .padLeft(2, "0"),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38)),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width * (0.8),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          decoration: BoxDecoration(
                            // color: Colors.blue[200],
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment
                                    .bottomCenter, // 10% of the width, so there are ten blinds.
                                colors: <Color>[
                                  colors[index % 4],
                                  colors[index % 4].shade200,
                                ]),
                            // borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 20, top: 5),
                                  // height: 160,
                                  child: Text(
                                      data[index].grade +
                                          "-" +
                                          data[index].section,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white))),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 20),
                                  // height: 160,
                                  child: Text(data[index].subject,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 10),
                                      // height: 160,
                                      child: Row(
                                        children: [
                                          Text("Present",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text(data[index].present.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ],
                                      )),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 10),
                                      // height: 160,
                                      child: Row(
                                        children: [
                                          Text("Absent",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text(data[index].absent.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ],
                                      )),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 10),
                                      // height: 160,
                                      child: Row(
                                        children: [
                                          Text("Leave",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                          Text(data[index].leave.toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                );
              }),
            )),
          ],
        ),
      ),
    );
  }
}
