import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:schoolapp/classes/event.dart';

class Actualcalender extends StatefulWidget {
  Actualcalender({Key? key}) : super(key: key);

  @override
  _ActualcalenderState createState() => _ActualcalenderState();
}

class _ActualcalenderState extends State<Actualcalender> {
  late Map<DateTime, List<Event>> selectedEvents;
  DateTime focusedday = DateTime.now();
  DateTime selectedday = DateTime.now();
  String datestring = "";
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

  @override
  void initState() {
    selectedEvents = {};
    selectedEvents[selectedday] = [
      Event("Event1-title conference ", DateTime(2021, 08, 5, 15, 30),
          DateTime(2021, 08, 5, 16, 00)),
      Event("event title Exam", DateTime(2021, 08, 5, 16, 30),
          DateTime(2021, 08, 5, 18, 00))
    ];
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

// Function onstartaddevent(){
//   setState(() {
//     selectedEvents[selectedday]=[Event("title1")];
//   });

// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                focusedDay: focusedday,
                firstDay: DateTime(1900),
                lastDay: DateTime(2100),
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedday, date);
                },
                eventLoader: _getEventsfromDay,
                calendarStyle: CalendarStyle(
                    markerDecoration: BoxDecoration(
                      color: Colors.blue[500],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(
                        color: Colors.purple[300],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: Offset(4, 4),
                          )
                        ]),
                    defaultDecoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    weekendDecoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    selectedTextStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                    todayTextStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    todayDecoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              spreadRadius: 4,
                              offset: Offset(4, 4)),
                        ])),
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  headerPadding: EdgeInsets.fromLTRB(68, 4, 68, 4),
                  // headerMargin: EdgeInsets.fromLTRB(5, 4, 5, 3),
                ),
                onDaySelected: (DateTime selectday, DateTime focusday) {
                  setState(() {
                    selectedday = selectday;
                    focusedday = focusday;
                    // selectedEvents[selectedday] = [
                    //   Event("title1"),
                    //   Event("title2 on " + selectedday.day.toString() + "th"),
                    //   Event("title3"),
                    //   Event("title4"),
                    //   Event("title5"),
                    //   Event("title6"),
                    //   Event("title7"),
                    //   Event("title8"),
                    //   Event("title9"),
                    //   Event("title10"),
                    //   Event("title11"),
                    // ];

                    selectedEvents[selectedday] = [
                      Event(
                          "Event1-title conference ",
                          DateTime(2021, 08, 5, 15, 30),
                          DateTime(2021, 08, 5, 16, 00)),
                      Event("event title Exam", DateTime(2021, 08, 5, 16, 30),
                          DateTime(2021, 08, 5, 18, 00))
                    ];
                  });
                },
              ),
              InkWell(
                onTap: () {
                  print("clicked to");

                  Navigator.pushNamed(context, '/dayview',
                      arguments: selectedday);
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(25, 5, 0, 10),
                  child: Text(
                      (selectedday.day == DateTime.now().day)
                          ? "Today, " +
                              months[selectedday.month.toInt() - 1] +
                              " " +
                              selectedday.day.toString()
                          : (selectedday.day == (DateTime.now().day + 1))
                              ? "Tommorow, " +
                                  months[selectedday.month.toInt() - 1] +
                                  " " +
                                  selectedday.day.toString()
                              : (selectedday.day == (DateTime.now().day - 1))
                                  ? "Yesterday, " +
                                      months[selectedday.month.toInt() - 1] +
                                      " " +
                                      selectedday.day.toString()
                                  : "" +
                                      week[selectedday.weekday.toInt()] +
                                      "," +
                                      months[selectedday.month.toInt() - 1] +
                                      " " +
                                      selectedday.day.toString(),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                ),
              ),
              ..._getEventsfromDay(selectedday).map(
                (Event event) => Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * (0.9),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  // color: Colors.blue[400],
                  // decoration: BoxDecoration(
                  //     shape: BoxShape.rectangle,
                  //     borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      //     title: Container(
                      //   alignment: Alignment.topLeft,
                      //   height: 60,
                      //   color: Colors.red,
                      //   child: Text(
                      //       event.Title + event.starttime.minute.toString(),
                      //       style: TextStyle(
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w500,
                      //           color: Colors.white)),
                      // )
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 9, left: 4),
                          alignment: Alignment.topLeft,
                          child: Text(
                              event.starttime.hour.toString() +
                                  ":" +
                                  event.starttime.minute.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38)),
                        ),
                        SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  width: 200,
                                  // color: Colors.red,
                                  height: 160,
                                  child: Text(event.Title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500))),
                              Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 3),
                                  width: 70,
                                  // color: Colors.green,
                                  height: 120,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          event.starttime.hour.toString() +
                                              ":" +
                                              event.starttime.minute.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400)),
                                      Text(
                                          "-" +
                                              event.endtime.hour.toString() +
                                              ":" +
                                              event.endtime.minute.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
