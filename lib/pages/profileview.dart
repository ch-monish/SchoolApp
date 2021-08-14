import 'package:flutter/material.dart';

class Profileview extends StatefulWidget {
  Profileview({Key? key}) : super(key: key);

  @override
  _ProfileviewState createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  @override
  Widget build(BuildContext context) {
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
          title: Text('Profile', style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/birthdaylist");
                  },
                  child: Icon(
                    Icons.cake,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.more_vert),
                )),
          ],

          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
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
            ])));
  }
}
