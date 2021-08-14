import 'package:flutter/material.dart';

class Birthdaylist extends StatefulWidget {
  Birthdaylist({Key? key}) : super(key: key);

  @override
  _BirthdaylistState createState() => _BirthdaylistState();
}

class _BirthdaylistState extends State<Birthdaylist> {
  TextEditingController _filterbirthday = TextEditingController();
  List<Birthdays> data = [
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Cierra Vega",
        "8",
        "a"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Alden Cantrell",
        "7",
        "c"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Kierra Gentry",
        "9",
        "d"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Pierre Cox",
        "8",
        "d"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Thomas Crane",
        "5",
        "a"),
  ];
  List<Birthdays> birthdaylist = [
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Cierra Vega",
        "8",
        "a"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Alden Cantrell",
        "7",
        "c"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Kierra Gentry",
        "9",
        "d"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Pierre Cox",
        "8",
        "d"),
    Birthdays(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQlw2FJiWn_OmJ7YmnBtVLBDKZQUF1EU0WGgZgDCldlYuJFCOcai2QQkRyOjt-4cS7XY&usqp=CAU",
        "Thomas Crane",
        "5",
        "a"),
  ];
  List<Birthdays> filteredlist = [];
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
          title: Text('Birthday List', style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: Column(children: [
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _filterbirthday,
              style: TextStyle(
                fontSize: 14,
                height: 0.01,
              ),
              decoration: InputDecoration(
                hintText: "Search by Name",
                border: OutlineInputBorder(),
              ),
              // onChanged: (text) {
              //   print(_filterbirthday.text);
              //   if (_filterbirthday.text == "") {
              //     setState(() {
              //       filteredlist = birthdaylist;
              //     });
              //   } else {
              //     print(_filterbirthday.text);
              //     setState(() {
              //       filteredlist = [];
              //     });
              //     // for (var i in birthdaylist) {
              //     //   if (i.name
              //     //       .toLowerCase()
              //     //       .contains(_filterbirthday.text.toLowerCase())) {
              //     //     print(i.name);
              //     //     setState(() {
              //     //       filteredlist.add(i);
              //     //     });
              //     //   }

              //     // }
              //     setState(() {
              //       filteredlist = birthdaylist
              //           .where((e) => e.name
              //               .toLowerCase()
              //               .contains(_filterbirthday.text.toLowerCase()))
              //           .toList();
              //       print(filteredlist.);
              //     });
              //   }
              // },
              onChanged: (text) {
                if (_filterbirthday.text == "") {
                  print("no text");
                  setState(() {
                    data = birthdaylist;
                  });
                } else {
                  print(_filterbirthday);
                  setState(() {
                    filteredlist = [];
                  });
                  for (var i in birthdaylist) {
                    if (i.name.toLowerCase().contains(text.toLowerCase())) {
                      print("true");
                      filteredlist.add(i);
                    }
                  }
                  if (filteredlist.isNotEmpty) {
                    setState(() {
                      data = filteredlist;
                      print(filteredlist);
                    });
                  } else {
                    data = [];
                  }
                  // filteredarray=data.where((i)=>
                  // (i.subject.toLowerCase().contains(text.toLowerCase())))
                }
              },
            ),
          ),
          Flexible(
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 1,
              childAspectRatio: 4 / 1,
              // mainAxisSpacing: 5,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(data.length, (index) {
                return Center(
                  child: Container(
                    height: 70,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue[400],
                    ),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(data[index].imgurl),
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].name,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              data[index].grade +
                                  "," +
                                  birthdaylist[index].section,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          )
        ]));
  }
}

class Birthdays {
  final String imgurl;
  final String name;
  final String grade;
  final String section;

  Birthdays(this.imgurl, this.name, this.grade, this.section);
}
