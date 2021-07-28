import 'package:flutter/material.dart';
import './homepagedrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599658880436-c61792e70672?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmVlJTIwb25saW5lJTIwJTIwcGF5bWVudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.orange[900], title: Text('Logo')),
        drawer: Drawer(
          child: Homepagedrawer(),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                CarouselSlider(
                  items: imgList.map((item) {
                    // int index = Widget.imgList.indexof(item);
                    return Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage(item),
                            fit: BoxFit.fill,
                          )),
                      // child: Center(
                      //   child: Image.network(item),
                      // )
                    );
                  }).toList(),
                  options: CarouselOptions(
                      aspectRatio: 2.0,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      pageSnapping: true,
                      initialPage: 0,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 7.0,
                      height: 7.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.orange : Colors.grey,
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 10,
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
                    print("notification open");
                    Navigator.pushNamed(context, '/notification');
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
                    Navigator.pushNamed(context, '/homework');
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
                    Navigator.pushNamed(context, '/examresult');
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
                    Navigator.pushNamed(context, '/buslocation');
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
                    Navigator.pushNamed(context, '/econtent');
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
