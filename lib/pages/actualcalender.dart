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

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
    selectedEvents[selectedday] = [Event("title1"), Event("title2")];
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
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                      color: Colors.blueAccent[400],
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
                  selectedEvents[selectedday] = [
                    Event("title1"),
                    Event("title2 on " + selectedday.day.toString() + "th")
                  ];
                });
              },
            ),
            ..._getEventsfromDay(selectedday).map((Event event) => Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * (0.9),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: ListTile(title: Text(event.Title)),
                ))
          ],
        ),
      ),
    );
  }
}
