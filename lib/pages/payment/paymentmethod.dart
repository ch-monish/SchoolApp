import 'package:flutter/material.dart';

enum PaymentMethod { UPI, Cash_on_Delivery, PayPal, Razorpay }

class Paymentmethod extends StatefulWidget {
  Paymentmethod({Key? key}) : super(key: key);
  // String _type = "";

  @override
  _PaymentmethodState createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  PaymentMethod _groupmethod = PaymentMethod.Cash_on_Delivery;
  @override
  Widget build(BuildContext context) {
    final Total = ModalRoute.of(context)!.settings.arguments;
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
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text('Payment', style: TextStyle(color: Colors.black)),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select Payment Method ",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                Text("total ₹" + Total.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                ListTile(
                  title: const Text('UPI'),
                  leading: Radio(
                    value: PaymentMethod.UPI,
                    groupValue: _groupmethod,
                    onChanged: (value) {
                      setState(() {
                        _groupmethod = value as PaymentMethod;
                        print("UPI");
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Cash on Delivery'),
                  leading: Radio(
                    value: PaymentMethod.Cash_on_Delivery,
                    groupValue: _groupmethod,
                    onChanged: (value) {
                      setState(() {
                        _groupmethod = value as PaymentMethod;
                        print("cashon");
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('PayPal'),
                  leading: Radio(
                    value: PaymentMethod.PayPal,
                    groupValue: _groupmethod,
                    onChanged: (value) {
                      setState(() {
                        _groupmethod = value as PaymentMethod;
                        print("paypal");
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Razorpay'),
                  leading: Radio(
                    value: PaymentMethod.Razorpay,
                    groupValue: _groupmethod,
                    onChanged: (value) {
                      setState(() {
                        _groupmethod = value as PaymentMethod;
                        print("Razorpay");
                      });
                    },
                  ),
                ),
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
                      Navigator.pushNamed(context, '/paymentaccreditation');
                    },

                    child: Text(
                      'Continue to Payment',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ])),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.pushNamed(context, '/paymentaccreditation');
      //   },
      //   backgroundColor: Colors.orange[800],
      //   label: Container(
      //       width: MediaQuery.of(context).size.width * (0.8),
      //       alignment: Alignment.center,
      //       child: Text("Continue")),
      // ),
    );
  }
}
