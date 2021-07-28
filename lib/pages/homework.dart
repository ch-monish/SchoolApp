import 'package:flutter/material.dart';
import 'dart:async';

class Homework extends StatefulWidget {
  Homework({Key? key}) : super(key: key);

  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  TextEditingController _filtercards = TextEditingController();
  List<Homeworkdata> filteredarray = [];
  List<Homeworkdata> data = [
    Homeworkdata("English", "Lorem Ipsum is simply duversions of Lorem Ipsum."),
    Homeworkdata('Physics',
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Homeworkdata("Maths",
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?"),
    Homeworkdata('Chemistry',
        "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen"),
    Homeworkdata("English",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  ];
  List<Homeworkdata> cardsdata = [
    Homeworkdata("English", "Lorem Ipsum is simply duversions of Lorem Ipsum."),
    Homeworkdata('Physics',
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    Homeworkdata("Maths",
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?"),
    Homeworkdata('Chemistry',
        "Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen"),
    Homeworkdata("English",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
  ];

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
          title: Text('Homework', style: TextStyle(color: Colors.white)),
          // titleTextStyle: Colors.red,
          centerTitle: true,
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.orange[800],
        ),
        body: Column(
          children: [
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _filtercards,
                style: TextStyle(
                  fontSize: 14,
                  height: 0.01,
                ),
                decoration: InputDecoration(
                  hintText: "Search by Subject",
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  if (_filtercards.text == "") {
                    print("no text");
                    setState(() {
                      data = cardsdata;
                    });
                  } else {
                    print(_filtercards.text);
                    setState(() {
                      filteredarray = [];
                    });
                    for (var i in cardsdata) {
                      if (i.subject
                          .toLowerCase()
                          .contains(text.toLowerCase())) {
                        print("true");
                        filteredarray.add(i);
                      }
                    }
                    if (filteredarray.isNotEmpty) {
                      setState(() {
                        data = filteredarray;
                        print(filteredarray);
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
            SizedBox(height: 5),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                // crossAxisSpacing: 10.0,
                // mainAxisSpacing: 10.0,
                // shrinkWrap: true,
                children: List.generate(
                  data.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 115,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(15, 0, 0, 5),
                                      child: Text(
                                        data[index].subject,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // margin: const EdgeInsets.only(top: 10),
                                    child: IconButton(
                                      icon: Icon(
                                          IconData(58664,
                                              fontFamily: 'MaterialIcons',
                                              matchTextDirection: false),
                                          size: 24),
                                      color: Colors.greenAccent,

                                      // size: 24.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              child: Container(
                                // if(data[index].assignment.length>20){

                                // }
                                padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                // child: Assignment(
                                //     question: data[index].assignment),
                                //     ),
                                child: (data[index].assignment.length > 120)
                                    ? Container(
                                        height: 80,
                                        child: Text(
                                            data[index]
                                                    .assignment
                                                    .substring(0, 110) +
                                                "...",
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                      )
                                    : Text(data[index].assignment,
                                        style: TextStyle(fontSize: 12)),
                              ),
                            ),
                            SizedBox(
                                height: 20,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 10, 8),
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    child: Text.rich(
                                      TextSpan(
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Know More',
                                              style: TextStyle(
                                                  color: Colors.orange)),
                                          WidgetSpan(
                                            child: Icon(
                                                IconData(57500,
                                                    fontFamily: 'MaterialIcons',
                                                    matchTextDirection: true),
                                                size: 12,
                                                color: Colors.greenAccent),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            Detailedassignmentview(
                                                passdata: data[index]),
                                      ));
                                    },
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

class Homeworkdata {
  final String subject;
  final String assignment;
  Homeworkdata(this.subject, this.assignment);
}

class Detailedassignmentview extends StatefulWidget {
  final Homeworkdata passdata;
  Detailedassignmentview({Key? key, required this.passdata}) : super(key: key);
  // Detailedassignmentview({required Homeworkdata this.passdata});
  @override
  _DetailedassignmentviewState createState() =>
      _DetailedassignmentviewState(passdata);
}

class _DetailedassignmentviewState extends State<Detailedassignmentview> {
  final Homeworkdata passdata;

  _DetailedassignmentviewState(this.passdata);
  // _Detailedassignmentview({required Homeworkdata this.passdata});
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
        title: Text(passdata.subject, style: TextStyle(color: Colors.white)),
        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.orange[800],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(passdata.assignment,
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'))),
      ),
    );
  }
}
