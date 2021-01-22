

import 'package:flutter/material.dart';

class VertreungSplam extends StatefulWidget {
  VertreungSplam({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;
  @override
  _VertreungSplamState createState() => _VertreungSplamState(homeScaffold: homeScaffold );
}

class _VertreungSplamState extends State<VertreungSplam> {
  _VertreungSplamState({this.homeScaffold});

  final GlobalKey<ScaffoldState> homeScaffold;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar() ,
      body: Center(
        child: Text("In Progress",style: TextStyle(fontSize: 40)),
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
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
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
}
