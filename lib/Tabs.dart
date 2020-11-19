import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/explore.dart';
import 'screens/subscription.dart';
import 'screens/library.dart';

// Main code for all the tabs
class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  static final homePageKey = GlobalKey<MyTabsState>();
  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
    tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: homePageKey,
      appBar: new AppBar(
        title: Image(
          image: AssetImage("images/ytclone.png"),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: new Material(

          child: new TabBar(
              controller: tabcontroller,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.redAccent[700],
              labelStyle: TextStyle(fontSize: 11.0),
              tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.explore),
              text: "Explore",
            ),
            new Tab(
              icon: new Icon(Icons.subscriptions),
              text: "Subscriptions",
            ),
            new Tab(
              icon: new Icon(Icons.folder),
              text: "Library",
            ),
          ])),
      body: new TabBarView(controller: tabcontroller, children: <Widget>[
        // All the Class goes here
        Home(),
        Explore(),
        Subscriptioins(),
        Library()
      ]),
    );
  }
}
