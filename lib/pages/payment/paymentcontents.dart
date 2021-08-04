import 'package:flutter/material.dart';

class Paymentcontents extends StatefulWidget {
  Paymentcontents({Key? key}) : super(key: key);

  @override
  _PaymentcontentsState createState() => _PaymentcontentsState();
}

class _PaymentcontentsState extends State<Paymentcontents> {
  List items = [
    Paymentitem(
      "School Fee",
      7000,
      "https://images.unsplash.com/photo-1471970471555-19d4b113e9ed?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Nob29sfGVufDB8MnwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    Paymentitem(
      "Refactor Telescope",
      7000,
      "https://images.freeimages.com/images/small-previews/0d2/telescope-1423769.jpg",
    ),
    Paymentitem(
      "Laboratory Equipments",
      7000,
      "https://media.istockphoto.com/photos/microscope-on-a-cyan-test-print-picture-id537312347?b=1&k=6&m=537312347&s=170x170&h=OLR6kG1tW_4jL3iaxqwwAsz0JDDh8x9rtugkWAdcvQ0=",
    ),
  ];
  num Total = 0;
  @override
  void initState() {
    // items.forEach((int price) =>Total+price;
    for (int p = 0; p < items.length; p++) {
      Total = Total + items[p].price;
    }
    super.initState();
  }

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
          padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.4 / 1,
                  children: List.generate(items.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Image.network(items[index].imgsrc,
                                fit: BoxFit.fill),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].title,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Rs." + items[index].price.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "₹" + Total.toString(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 200),
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/payment', arguments: Total);
        },
        backgroundColor: Colors.orange[800],
        label: Container(
            width: MediaQuery.of(context).size.width * (0.8),
            alignment: Alignment.center,
            child: Text("Continue")),
      ),
    );
  }
}

class Paymentitem {
  final String title;
  final int price;
  final String imgsrc;

  Paymentitem(this.title, this.price, this.imgsrc);
}
