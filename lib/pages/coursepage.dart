import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/pages/econtent.dart';

class Coursepage extends StatefulWidget {
  Coursepage({Key? key}) : super(key: key);

  @override
  _CoursepageState createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  // static const route = "/coursepage";
  _CoursepageState();

  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context)!.settings.arguments as Course;
    return Scaffold(
      extendBody: true,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9KgM8UUuaS0dlOwEw7kFx5NQEP7mWVV9c5g&usqp=CAU"),
                      fit: BoxFit.fill)),
            ),
            SingleChildScrollView(
              child: Container(
                // color: Colors.blue,
                width: MediaQuery.of(context).size.width * (0.8),

                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  IconData(61294, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                  size: 20.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                                Text(course.comments.length.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  IconData(58771, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                  size: 20.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                                Text(course.share.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  IconData(57948, fontFamily: 'MaterialIcons'),
                                  color: Colors.white,
                                  size: 20.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                                Text(course.likes.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ],
                      ),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  course.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 20),
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  textDirection: TextDirection.ltr,
                                )),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text("By " + course.channel,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87,
                                        fontSize: 10))),
                          ),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Your Progress",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87,
                                          fontSize: 15)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              IconData(
                                                983202,
                                                fontFamily: 'MaterialIcons',
                                                matchTextDirection: true,
                                              ),
                                              size: 18,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {},
                                            tooltip: MaterialLocalizations.of(
                                                    context)
                                                .openAppDrawerTooltip,
                                          ),
                                          Container(
                                            child: Text("Session 1",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(50, 0, 0, 5),
                                        child: Text("Basics of topic 1",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300)),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              IconData(
                                                983202,
                                                fontFamily: 'MaterialIcons',
                                                matchTextDirection: true,
                                              ),
                                              size: 18,
                                              color: Colors.blue,
                                            ),
                                            onPressed: () {},
                                            tooltip: MaterialLocalizations.of(
                                                    context)
                                                .openAppDrawerTooltip,
                                          ),
                                          Container(
                                            child: Text("Session 2",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(50, 0, 0, 5),
                                        child: Text("Basics of topic 2",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300)),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // PreferedSize(

      //   child:AppBar(
      //   title: Image.network(
      //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKEbjqi_zDLY7e-WhRy3Xud21bxCwSqAXxyA&usqp=CAU",
      //       fit: BoxFit.cover),
      // ),)
    );
  }
}

class Session extends StatefulWidget {
  Session({Key? key}) : super(key: key);

  @override
  _SessionState createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("session1"),
    );
  }
}
