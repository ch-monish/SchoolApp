import 'package:flutter/material.dart';
import './homepagedrawer.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Logo')),
        drawer: Drawer(
          child: Homepagedrawer(),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 250.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 250.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(color: Colors.white, child: Dashboard())
              ],
            ),
          ),
        ));
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.blue[700],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(57656, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Anouncement",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.red[600],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(63257, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Attendance",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.amber[700],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(61083, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Home Work",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.red[500],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(57690, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Marks",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.teal[500],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(57814, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Bus Location",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.purple[500],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(59312, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Fee Details",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.indigo[500],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(61894, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Comments",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.redAccent,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(57942, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Notice Board",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.blue[400],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(58986, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Actual Calendar",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.redAccent,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(58280, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Write to School",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.tealAccent[700],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(62101, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "E-Content",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
                InkWell(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * (1 / 3.1),
                    color: Colors.blue[800],
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 15),
                          Icon(
                            IconData(60981, fontFamily: 'MaterialIcons'),
                            color: Colors.white,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Profile View",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    print("Click event on Container");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
