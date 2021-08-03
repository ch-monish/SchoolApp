import 'package:flutter/material.dart';

class Econtent extends StatefulWidget {
  Econtent({Key? key}) : super(key: key);

  @override
  _EcontentState createState() => _EcontentState();
}

class _EcontentState extends State<Econtent> {
  List<Data> data = [
    Data("The Photo Manipulation Live workshop", 3, 5),
    Data("The Photo Manipulation Live workshop Day 2", 4, 9)
  ];
  List<Course> coursedatalist = [
    Course("The Fundamentals of Product Design", "Design Studio", 100,
        ["a", "c"], 10),
    Course("course title2", "company2", 99, ["a", "c"], 11)
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
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),

        backgroundColor: Colors.white,
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 220,
                width: 360,
                child: Expanded(
                    child: GridView.count(
                        crossAxisCount: 1,
                        scrollDirection: Axis.horizontal,
                        childAspectRatio: 1 / 1.6,
                        mainAxisSpacing: 10,
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                        children: data.map((index) {
                          return Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Color(0xff002fff),
                                  Color(0xff00f4ff),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        IconData(61892,
                                            fontFamily: 'MaterialIcons'),
                                        color: Colors.white,
                                        size: 20.0,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(9, 3, 9, 3),
                                        decoration: BoxDecoration(
                                            color: Colors.orange[700],
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: Text("Live",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(
                                          index.title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                          maxLines: 2,
                                          overflow: TextOverflow.clip,
                                          textDirection: TextDirection.ltr,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 50, 0),
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 15),
                                  child: Row(
                                    children: [
                                      Icon(
                                        IconData(62207,
                                            fontFamily: 'MaterialIcons'),
                                        color: Colors.white,
                                        size: 20.0,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                      Text(index.views.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white)),
                                      SizedBox(width: 20),
                                      Icon(
                                        IconData(61294,
                                            fontFamily: 'MaterialIcons'),
                                        color: Colors.white,
                                        size: 20.0,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                      Text(index.noofcomments.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList())),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: DefaultTabController(
                    length: 3, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              unselectedLabelColor: Colors.black,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                color: Colors.orange[600],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              tabs: [
                                Tab(text: 'New'),
                                Tab(text: 'Trendy'),
                                Tab(text: 'Best-rated'),
                              ],
                            ),
                          ),
                          Container(
                              height: 400, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Container(
                                  child: Center(
                                    child: Courseslist(
                                      data: coursedatalist,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Courseslist(
                                      data: coursedatalist,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Courseslist(
                                      data: coursedatalist,
                                    ),
                                  ),
                                ),
                              ]))
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Data {
  final String title;
  final int views;
  final int noofcomments;
  Data(this.title, this.views, this.noofcomments);
}

class Course {
  final String title;
  final String channel;
  final int likes;
  final List<String> comments;
  final int share;
  Course(this.title, this.channel, this.likes, this.comments, this.share);
}

class Courseslist extends StatefulWidget {
  final List<Course> data;
  Courseslist({Key? key, required this.data}) : super(key: key);

  @override
  _CourseslistState createState() => _CourseslistState(data);
}

class _CourseslistState extends State<Courseslist> {
  List<Course> data;
  _CourseslistState(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
      width: 360,
      child: Expanded(
          child: GridView.count(
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              childAspectRatio: 1 / 0.7,
              mainAxisSpacing: 10,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              children: data.map((index) {
                return InkWell(
                  onTap: () {
                    print(index.title);
                    Navigator.pushNamed(context, '/coursepage',
                        arguments: index);
                  },
                  child: Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 290,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Stack(children: <Widget>[
                                new Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: new BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://picsum.photos/250?image=9'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                    // borderRadius: BorderRadius.circular(80.0),
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 5, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                            size: 20.0,
                                            semanticLabel:
                                                'Text to announce in accessibility modes',
                                          ),
                                          Text(index.likes.toString(),
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    )),
                              ])),
                          Container(
                              width: 200,
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                              child: Text(index.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  textDirection: TextDirection.ltr,
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700))),
                          Container(
                              padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: Text(index.channel,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black45)))
                        ],
                      )),
                );
              }).toList())),
    );
  }
}
