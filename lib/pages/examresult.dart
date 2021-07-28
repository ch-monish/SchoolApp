import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Examresult extends StatefulWidget {
  Examresult({Key? key}) : super(key: key);

  @override
  _ExamresultState createState() => _ExamresultState();
}

class _ExamresultState extends State<Examresult> {
  List<Marks> markslist = [
    Marks("Maths", 75),
    Marks("English", 60),
    Marks("Computer Science", 80),
    Marks("Physics", 85),
    Marks("Chemistry", 90)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(
        //   IconData(
        //     59483,
        //     fontFamily: 'MaterialIcons',
        //     matchTextDirection: true,
        //   ),
        //   size: 35,
        //   color: Colors.black,
        // ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                IconData(
                  59483,
                  fontFamily: 'MaterialIcons',
                  matchTextDirection: true,
                ),
                size: 35,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('Exam Result', style: TextStyle(color: Colors.white)),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.orange[800],
        actions: <Widget>[],
      ),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(15.0),
                    //   bottomLeft: Radius.circular(15.0),
                    //   topRight: Radius.circular(15.0),
                    //   bottomRight: Radius.circular(15.0),
                    // ),
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                    image: DecorationImage(
                      image: NetworkImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Suman Mondal',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Flexible(
                child: new GridView.count(
                  crossAxisCount: 1,

                  childAspectRatio: (80 / 20),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  // controller: new ScrollController(keepScrollOffset: false),
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: markslist.map((var index) {
                    return InkWell(
                      child: new Container(
                        // color: Colors.blue,
                        margin: new EdgeInsets.fromLTRB(5, 30, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                              child: Text(
                                index.subject,
                                style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                child: CircularPercentIndicator(
                                  radius: 55.0,
                                  lineWidth: 5.0,
                                  animation: true,
                                  animationDuration: 2000,
                                  // backgroundWidth: 15,
                                  percent: index.percentage / 100,
                                  progressColor: Colors.green[400],
                                  center: new Text(
                                    index.percentage.toString(),
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      onTap: () {
                        print(index.subject);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Detailedview(marks: index),
                        ));
                      },
                      onDoubleTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              Detailedsubjectview(data: markslist),
                        ));
                      },
                    );
                  }).toList(),
                ),

                // SizedBox(height: 10),
              ),
            ]),
      ),
    );
  }
}

class Marks {
  final String subject;
  final double percentage;
  Marks(this.subject, this.percentage);
}

class Detailedview extends StatefulWidget {
  final Marks marks;
  Detailedview({Key? key, required this.marks}) : super(key: key);

  @override
  _DetailedviewState createState() => _DetailedviewState(marks);
}

class _DetailedviewState extends State<Detailedview> {
  Marks marks;
  _DetailedviewState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text(marks.subject, style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * (1),
                color: Colors.grey[200],
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[400],
                        image: DecorationImage(
                          image: NetworkImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Suman Mondal",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  child: CircularPercentIndicator(
                    radius: 170.0,
                    lineWidth: 20.0,
                    animation: true,
                    animationDuration: 1500,
                    // backgroundWidth: 15,
                    fillColor: Colors.white70,
                    percent: marks.percentage / 100,
                    progressColor: Colors.green[400],
                    center: new Text(
                      marks.percentage.toInt().toString() + "%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.orange[900]),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Your Score",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.w700)),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(marks.subject,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 80),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * (1),
                color: Colors.grey[200],
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconData(58454, fontFamily: 'MaterialIcons'),
                      color: Colors.black,
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "Share Result",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(width: 140),
                    Container(
                      child: Icon(
                        IconData(63238, fontFamily: 'MaterialIcons'),
                        color: Colors.orange[800],
                        size: 30.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Detailedsubjectview extends StatefulWidget {
  final List<Marks> data;
  Detailedsubjectview({Key? key, required this.data}) : super(key: key);

  @override
  _DetailedsubjectviewState createState() => _DetailedsubjectviewState(data);
}

class _DetailedsubjectviewState extends State<Detailedsubjectview> {
  final List<Marks> data;
  static final List<String> dropdownlist = <String>[
    'Final Exam',
    'First Exam',
    'Second exam',
    'Third Exam'
  ];
  _DetailedsubjectviewState(this.data);
  String dropdownValue = dropdownlist.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text("Exam Result", style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: SafeArea(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  color: Colors.orange,
                  elevation: 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "Choose Exam Type : ",
                        ),
                      ),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(
                            IconData(57496, fontFamily: 'MaterialIcons')),
                        iconSize: 24,
                        elevation: 16,
                        hint: Text("Exam Type"),
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: dropdownlist
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                    child: GridView.count(
                        crossAxisCount: 1,
                        scrollDirection: Axis.vertical,
                        childAspectRatio: 25 / 10,
                        mainAxisSpacing: 10,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        children: data.map((index) {
                          return Container(
                            color: Colors.orange[200],
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text("Subject : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                      Text(index.subject,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.red)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Row(
                                    children: [
                                      Text("Obtained Marks : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                      Text("Results Are Not Available",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Row(
                                    children: [
                                      Text("Grade : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                      Text("subject grade",
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 2,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: Row(
                                    children: [
                                      Text("Result : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600)),
                                      Text("subject result",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationThickness: 2,
                                              fontWeight: FontWeight.w600)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList())),
              ]),
        ),
      ),
    );
  }
}
