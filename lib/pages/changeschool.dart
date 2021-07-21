import 'package:flutter/material.dart';

class ChangeSchool extends StatefulWidget {
  ChangeSchool({Key? key}) : super(key: key);

  @override
  _ChangeSchoolState createState() => _ChangeSchoolState();
}

class _ChangeSchoolState extends State<ChangeSchool> {
  forgotPassword() => {print('forget clicked')};
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
        title:
            Text('Change School', style: TextStyle(color: Color(0xee111100))),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              ),
              // SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 40,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'User Id',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                // height: 80,

                child: TextField(
                  style: TextStyle(
                    height: 1,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                // height: 80,
                child: TextField(
                  style: TextStyle(
                    height: 1.0,
                  ),
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        forgotPassword();
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.blue[400]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[800],
        child: Icon(IconData(61068,
            fontFamily: 'MaterialIcons', matchTextDirection: true)),
      ),
    );
  }
}
