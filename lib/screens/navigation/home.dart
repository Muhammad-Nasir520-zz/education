

import 'package:education21/screens/navigation/vertretungsplam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:education21/screens/homePage.dart';

import 'nav_item.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext context;
  int navSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    YYDialog.init(context);
    this.context = context;
    return Scaffold(
      key:_scaffoldKey,
      drawer: buildNavigationDrawer(),
      body: navPages()[navSelectedIndex],
    );
  }

  List<Widget> navPages () {
    return [
      NavHomePage(homeScaffold: _scaffoldKey,),
      VertreungSplam(homeScaffold: _scaffoldKey,),


    ];
  }
  // open nav drawer
  void openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }
  // close drawer
  void closeDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      Navigator.pop(context);
    }
  }
  Widget buildNavigationDrawer() {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          padding: EdgeInsets.only(left: 24, right: 16, top: 40, bottom: 24),
          child: Column(
            children: [
              // navigation header
              //NavHeader(context: context, homeScaffold: _scaffoldKey),
              // margin
              SizedBox(height: 40,),
              // navigation drawer menu
              buildNavigationMenu(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildNavigationMenu() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Home
          buildHome(),
          // margin
          SizedBox(height: 8,),
          buildDucoment(),
          SizedBox(height: 8,),
          // Notifications
          buildVertreet(),
          // margin
          SizedBox(height: 8,),
          buildBreet(),
          // margin
          SizedBox(height: 8,),
          buildBrowser(),
          // margin
          SizedBox(height: 8,),
          buildApps(),
          // margin
          SizedBox(height: 8,),
          buildListung(),
          // margin
          SizedBox(height: 8,),
          buildLemmon(),
          // margin
          SizedBox(height: 8,),
          buildSchulWiki(),
          // margin
          SizedBox(height: 8,),
          buildNotizbe(),
          // margin
          SizedBox(height: 8,),
          buildQuickNote(),
          // margin
          SizedBox(height: 8,),
          buildDocs(),
          // margin
          SizedBox(height: 8,),
          buildkalender(),
          // margin
          SizedBox(height: 8,),
          buildEinstellegen(),
          // margin
          SizedBox(height: 8,),
          buildFaq(),
          // margin
          SizedBox(height: 8,),

        ],
      ),
    );
  }

  // build nav home item
  Widget buildHome() {
    return NavItem(
      onPressed: () {
        print("Home taped");
        setState(() {
          navSelectedIndex = 0;
        });
        closeDrawer();
      },
      title: "Home",
      imgPath: "assets/sidedrawerimages/homee.svg",
      fontWeight: navSelectedIndex == 0? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildDucoment() {
    return NavItem(
      onPressed: () {
        print("Home taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Dokumente",
      imgPath: "assets/sidedrawerimages/ducoment.svg",
      fontWeight: navSelectedIndex == 0 ? FontWeight.w700 : FontWeight.w400,
    );
  }

    // build nav notification item
  Widget buildVertreet() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/vertegrate.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildBreet() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/breet.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildBrowser() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/browser.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildApps() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/appstore.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }

  Widget buildListung() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/datausage.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildLemmon() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/lightbuld.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildSchulWiki() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/bookss.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildNotizbe() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/notizb.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildQuickNote() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/eventnoteimages/quicknote.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildDocs() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/eventnoteimages/adddos.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildkalender() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/eventnoteimages/addnote.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildEinstellegen() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/eventnoteimages/setting.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }
  Widget buildFaq() {
    return NavItem(
      onPressed: () {
        print("Notifications taped");
        setState(() {
          navSelectedIndex = 1;
        });
        closeDrawer();
      },
      title: "Notifications",
      imgPath: "assets/sidedrawerimages/faq.svg",
      fontWeight: navSelectedIndex == 1? FontWeight.w700 : FontWeight.w400,
    );
  }




}
