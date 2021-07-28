import 'package:flutter/material.dart';

class Buslocation extends StatefulWidget {
  Buslocation({Key? key}) : super(key: key);

  @override
  _BuslocationState createState() => _BuslocationState();
}

class _BuslocationState extends State<Buslocation> {
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
          title: Text('Bus Tracker', style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Refresh '),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return Container(
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     shape: BoxShape.rectangle,
                    //     borderRadius: BorderRadius.only(
                    //       topRight: Radius.circular(18),
                    //       topLeft: Radius.circular(18),
                    //     )),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0))),
                    height: 250,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          // const Text('Modal BottomSheet'),
                          // ElevatedButton(
                          //   child: const Text('Close BottomSheet'),
                          //   onPressed: () => Navigator.pop(context),
                          // ),
                          SizedBox(width: 10),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text("231 Mirallik Road - Pick Up Trip",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset('assets/images/Schoolbus.jpeg',
                                  width: 80, height: 80),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bus -09",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text(
                                      "(2.3 Kms away 10 min to reach to school)",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 10)),
                                ],
                              ),
                            ],
                          ),
                          Divider(color: Colors.black),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                // color: Colors.yellow,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                ),
                                child: Image.asset(
                                    'assets/images/Busdriver.png',
                                    width: 50,
                                    height: 50),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Driverr",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  Text("Ateik Walley",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 12)),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(left: 140),
                                  decoration: new BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    IconData(58271,
                                        fontFamily: 'MaterialIcons'),
                                    color: Colors.white,
                                    size: 20.0,
                                    semanticLabel:
                                        'Text to announce in accessibility modes',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
