import 'package:education21/model/event_note_model.dart';
import 'package:education21/model/subjectmodel.dart';
import 'package:education21/screens/customsubjectpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_svg/svg.dart';

class NavHomePage extends StatefulWidget {
  NavHomePage({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  _NavHomePageState createState() =>
      _NavHomePageState(homeScaffold: homeScaffold);
}

class _NavHomePageState extends State<NavHomePage> {
  _NavHomePageState({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // body: Container(
      //   child: buildSpotImageListView(),
      // ),

      appBar: buildAppBar(),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      child: buildEventNoteListView(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    subjectsRow1(),
                    SizedBox(
                      height: 20,
                    ),
                    subjectsRow2(),
                    SizedBox(
                      height: 20,
                    ),
                    subjectsRow3(),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text("Heuto"),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text("Wache"),
                                ),
                              )
                            ],
                          )
                             )),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            SvgPicture.asset(
                              "assets/wacheimages/first.svg",
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SvgPicture.asset(
                              "assets/wacheimages/second.svg",
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/wacheimages/third.svg",
                                ),
                                SvgPicture.asset(
                                  "assets/wacheimages/repeat.svg",
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SvgPicture.asset(
                              "assets/wacheimages/fifth.svg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              "assets/wacheimages/fourth.svg",
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                child: Text(""),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/wacheimages/bucher.svg",
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/wacheimages/Lernen.svg",
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    bottomButtons(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: buildNavMenuIcon(),
      title: Center(
        child: Text(
          "",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  Widget buildNavMenuIcon() {
    return InkWell(
      onTap: () {
        homeScaffold.currentState.openDrawer();
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => HomePage()),);
      },
      child: Icon(
        Icons.menu,
        color: Colors.black,
        size: 30,
      ),
    );
  }

  Widget subjectsRow1() {
    return Row(
      children: [
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[0].image,getText:subjectList[0].subjectText)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[0].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subjectList[0].subjectText,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[1].image,getText:subjectList[1].subjectText)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[1].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[1].subjectText, style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[2].image,getText:subjectList[2].subjectText)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[2].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[2].subjectText, style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }

  Widget subjectsRow2() {
    return Row(
      children: [
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[3].image,getText:subjectList[3].subjectText)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[3].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subjectList[3].subjectText,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[4].image,getText:subjectList[4].subjectText,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[4].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[4].subjectText, style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[5].image,getText:subjectList[5].subjectText,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[5].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[5].subjectText, style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }

  Widget subjectsRow3() {
    return Row(
      children: [
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[6].image,getText:subjectList[6].subjectText,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[6].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subjectList[6].subjectText,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[7].image,getText:subjectList[7].subjectText,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[7].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[7].subjectText,style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubjectPage(getImage:subjectList[8].image,getText:subjectList[8].subjectText,)),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SvgPicture.asset(
                    subjectList[8].image,
                    width: 36,
                    height: 36,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(subjectList[8].subjectText, style: TextStyle(fontSize: 15))
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }

  Widget buildEventNoteListView() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: eventNoteList.length,
      itemBuilder: (context, index) {
        return buildEventNoteListItem(context, index);
      },
    );
  }

  Widget buildEventNoteListItem(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 32, right: 32),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(
                color: Colors.black,
              ),
              //borderRadius: BorderRadius.circular(1)
            ),
            child: SvgPicture.asset(
              eventNoteList[index].image,
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(height: 5),
          Text(eventNoteList[index].eventNoteText,
              style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }

  Widget bottomButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: SvgPicture.asset(
                                'assets/mixicons/cross.svg',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Bucher zuruckbgen",
                                style: TextStyle(fontSize: 15))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: SvgPicture.asset(
                                'assets/mixicons/cross.svg',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Referat in Pause vorberetin",
                                style: TextStyle(fontSize: 15))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: SvgPicture.asset(
                                'assets/mixicons/rectangle.svg',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Physik - Afgabe 5 fargen",
                                style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SvgPicture.asset(
                            'assets/mixicons/rectangle.svg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Faru Damm wegen nachste\nWoche baschied gaben",
                            style: TextStyle(fontSize: 15))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SvgPicture.asset(
                            'assets/mixicons/cross.svg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Papa schreiben wann abholen\n soll",
                            style: TextStyle(fontSize: 15))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SvgPicture.asset(
                            'assets/mixicons/rectangle.svg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Mathe, Deutsch & bio lernen\nmit Nina",
                            style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: SvgPicture.asset(
                          'assets/mixicons/add.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Add", style: TextStyle(fontSize: 15))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/mixicons/delete.svg',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Clear", style: TextStyle(fontSize: 15))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/mixicons/undo.svg',
                          width: 25,
                          height: 25,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Undo", style: TextStyle(fontSize: 15))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
