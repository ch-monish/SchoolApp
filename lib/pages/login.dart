import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:country_pickers/country_pickers.dart';
// import 'package:country_pickers/country_pickers.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return new MaterialApp(
        home: new Scaffold(
      // return Scaffold(
      appBar: AppBar(
        title: Text('Logo', style: TextStyle(color: Color(0xFFFFFFFF))),
        // titleTextStyle: Colors.red,
        elevation: 0,
        toolbarHeight: 45,
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange[900],
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.black,
          ),
          height: MediaQuery.of(context).size.height * 1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                ),

                // SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'School Management System',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  // height: 80,

                  child: TextField(
                      style: TextStyle(
                        height: 0.01,
                        color: Colors.white,
                        decorationColor: Colors.white,
                      ),
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: 'Enter Mobile Number',

                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                      ),
                      cursorHeight: 20,
                      cursorColor: Colors.white,
                      maxLength: 10,
                      autofocus: false,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number),
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      // style:raisedButtonStyle,
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.80, 40),
                        primary: Colors.orange[800],

                        // double.infinity is the width and 30 is the height
                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, '/verification');
                      },

                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
