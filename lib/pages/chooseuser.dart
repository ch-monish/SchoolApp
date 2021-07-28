import 'package:flutter/material.dart';

class Chooseuser extends StatefulWidget {
  Chooseuser({Key? key}) : super(key: key);

  @override
  _ChooseuserState createState() => _ChooseuserState();
}

class _ChooseuserState extends State<Chooseuser> {
  String valuechose = "Student";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange[800],
          title: Text("Logo",
              style: TextStyle(color: Colors.white, fontSize: 16))),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 140),
          decoration: new BoxDecoration(
            color: Colors.teal[500],
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

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.white60],
                        begin: FractionalOffset(0, 10),
                        end: FractionalOffset(0.2, 0),
                        // stops: [0.0, 1.0],
                        // tileMode: TileMode.clamp
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      value: valuechose,
                      isExpanded: true,
                      hint: Text("Select"),
                      icon: const Icon(
                          IconData(57496, fontFamily: 'MaterialIcons')),
                      iconSize: 32,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (newValue) {
                        setState(() {
                          valuechose = newValue.toString();
                        });
                      },
                      items: <String>['Student', 'Faculty', 'Admin']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
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
                        Navigator.pushNamed(context, '/login');
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
    );
  }
}
