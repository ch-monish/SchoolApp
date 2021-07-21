import 'package:flutter/material.dart';

class Homepagedrawer extends StatelessWidget {
  const Homepagedrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.green[700],
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/50499828?v=4'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 28),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'Hello Kevin',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text(
                          "Let's fun with pizza!",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // alignment: Alignment.centerRight
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    IconData(60562, fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Sibling",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    IconData(58266, fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  ),
                  title: Text(
                    "Academic Session",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    IconData(58150, fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  ),
                  title: Text(
                    "Login Device",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Other Account",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Add Account",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    IconData(58150, fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  ),
                  title: Text(
                    "Rate Us",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              color: Colors.green[400],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  onTap: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
