import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
        title: Text('Notification', style: TextStyle(color: Colors.white)),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.orange[800],
      ),
      // body: Flexible(
      //       child: GridView.count(
      //         crossAxisCount: 1,
      //         // crossAxisSpacing: 10.0,
      //         // mainAxisSpacing: 10.0,
      //         // shrinkWrap: true,
      //         children: List.generate(
      //           data.length,
      //           (index) {
      //             return Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                   boxShadow: [
      //                     BoxShadow(
      //                       color: Colors.grey,
      //                       blurRadius: 5.0,
      //                     )
      //                   ],
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(15.0),
      //                   ),
      //                 ),
      //                 child: Column(
      //                   children: [
      //                     SizedBox(
      //                       height: 40,
      //                       child: Row(
      //                         children: [
      //                           SizedBox(
      //                             width: 115,
      //                             child: Container(
      //                               padding: EdgeInsets.fromLTRB(15, 0, 0, 5),
      //                               child: Text(
      //                                 data[index].subject,
      //                                 style: TextStyle(
      //                                     fontWeight: FontWeight.bold),
      //                               ),
      //                             ),
      //                           ),
      //                           Container(
      //                             // margin: const EdgeInsets.only(top: 10),
      //                             child: IconButton(
      //                               icon: Icon(
      //                                   IconData(58664,
      //                                       fontFamily: 'MaterialIcons',
      //                                       matchTextDirection: false),
      //                                   size: 24),
      //                               color: Colors.greenAccent,

      //                               // size: 24.0,
      //                               onPressed: () {},
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     SizedBox(
      //                       height: 100,
      //                       child: Container(
      //                         // if(data[index].assignment.length>20){

      //                         // }
      //                         padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
      //                         // child: Assignment(
      //                         //     question: data[index].assignment),
      //                         //     ),
      //                         child: (data[index].assignment.length > 120)
      //                             ? Container(
      //                                 height: 80,
      //                                 child: Text(
      //                                     data[index]
      //                                             .assignment
      //                                             .substring(0, 110) +
      //                                         "...",
      //                                     style: TextStyle(
      //                                       fontSize: 12,
      //                                     )),
      //                               )
      //                             : Text(data[index].assignment,
      //                                 style: TextStyle(fontSize: 12)),
      //                       ),
      //                     ),

      //                   ],
      //                 ),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ),
    );
  }

  // Widget buildRoundedCard() => Card(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(12),
  //       ),
  //       child: null,
  //   Container(
  //     padding: EdgeInsets.all(16),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Rounded card',
  //           style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(height: 4),
  //         Text(
  //           'This card is rounded',
  //           style: TextStyle(fontSize: 20),
  //         ),
  //       ],
  //     ),
  //   ),
  // );
  // )
}

// class Notification{

// }
