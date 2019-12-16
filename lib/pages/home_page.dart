import 'package:flutter/material.dart';
import 'package:mnew/models/notebook_model.dart';

import 'package:mnew/widgets/BottomBar.dart';
import 'package:mnew/widgets/CardList.dart';
import 'package:mnew/widgets/TopBar.dart';
import 'package:mnew/widgets/assets/Colors.dart';


class HomePage extends StatefulWidget {
  final String title;

  HomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List projects;

  @override
  void initState() {
    projects = getProjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.SLATE,
      appBar: TopBar(widget.title),
      body: CardList(context, projects),
      bottomNavigationBar: BottomBar(),
      //floatingActionButton: _newItemButton(),
    );
  }
}


// bootstrap api
List getProjects() => [
      new Notebook("app",
          goal:
              "i'm trying to build a logical notebook to keep track of my projects",
          date: "02 Dec",
          activities: [
            new Notebook("Overhaul",
                goal: "app needs a whole redesign before next implementation",
                date: "02 Dec"
            ),
            new Notebook("API Endpoint",
                goal: "Create fake API endpoint for dev/testing",
                date: "26 Nov"),
            new Notebook("Rough UI",
                goal: "protype a UI as a guide",
                date: "10 Nov"),
          ]),
      new Notebook("EP", goal: "aijuswannaseing", date: "24 Nov",
          activities: [
            new Notebook("structure", date: "24 Nov"),
            new Notebook("ableton", date: "1 Nov"),
            new Notebook("garageband", date: "28 Sep"),
          ]),
      new Notebook("BP", goal: "BP story idea", date: "19 Oct",
          activities: [
            new Notebook("Eve storyline", date: "29 Oct"),
            new Notebook("Power structure", date: "5 Oct"),
            new Notebook("timeline", date: "21 Aug"),
          ]),
      new Notebook("conan",
          goal: "learn how to establish before aa get a p4",
          date: "05 Aug",
          activities: [
            new Notebook("survival", date: "29 Oct"),
            new Notebook("menu navigation", date: "30 Oct"),
          ]),
      new Notebook("Testing",
          goal:
              "this description has a lot of text so i can make sure the cards properly overflow without breaking the ui & causing any bugs that i would have to fix",
          date: "29 Jun",
          activities: [
            new Notebook("placeholder", date: "29 Oct"),
            new Notebook("test", date: "5 Oct"),
          ]),
    ];
