import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Feepayment extends StatefulWidget {
  Feepayment({Key? key}) : super(key: key);

  @override
  _FeepaymentState createState() => _FeepaymentState();
}

class _FeepaymentState extends State<Feepayment> {
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
          title: Text('Fee Payment', style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(45, 0, 0, 0),
                height: 150,
                width: MediaQuery.of(context).size.width * (0.7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text("july School Fees",
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pay by 20 july",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/paymentcontents');
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange[900],
                            ),
                            child: Text("Pay",
                                style: (TextStyle(color: Colors.white)))),
                        SizedBox(width: 5),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                  width: 4, color: Colors.orange.shade900),
                            ),
                            child: Text("Due",
                                style: (TextStyle(color: Colors.black)))),
                        SizedBox(width: 15),
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
