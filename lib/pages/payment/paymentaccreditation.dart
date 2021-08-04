import 'package:flutter/material.dart';

class Paymentaccreditation extends StatefulWidget {
  Paymentaccreditation({Key? key}) : super(key: key);

  @override
  _PaymentaccreditationState createState() => _PaymentaccreditationState();
}

class _PaymentaccreditationState extends State<Paymentaccreditation> {
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
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('Success', style: TextStyle(color: Colors.black)),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 150,
                  // margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(15.0),
                    //   bottomLeft: Radius.circular(15.0),
                    //   topRight: Radius.circular(15.0),
                    //   bottomRight: Radius.circular(15.0),
                    // ),
                    shape: BoxShape.rectangle,
                    color: Colors.grey[300],
                    image: DecorationImage(
                      image: NetworkImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text("Congratulations !!!",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
                Text("Your order has been sucessfully placed",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                SizedBox(height: 5),
                Text("Please check the delivery status at My Booking page",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                Container(
                  height: 100,
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    // style:raisedButtonStyle,
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.85, 40),
                      primary: Colors.orange[800],

                      // double.infinity is the width and 30 is the height
                    ),

                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },

                    child: Text(
                      'Payment Sucess',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ])),
    );
  }
}
