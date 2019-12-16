import 'package:flutter/material.dart';
import 'package:mnew/models/notebook_model.dart';
import 'package:mnew/widgets/BottomBar.dart';
import 'package:mnew/widgets/ProjectCard.dart';
import 'package:mnew/widgets/TopBar.dart';
import 'package:mnew/widgets/assets/Colors.dart';
import 'package:mnew/widgets/assets/Icons.dart';

class ProjectPage extends StatefulWidget {
  final Notebook project;

  ProjectPage({
    Key key,
    this.project,
  }) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.SLATE,
      appBar: TopBar(widget.project.name),
      body: CustomScrollView(slivers: <Widget>[
        _projectDescription(widget.project.goal),
        _projectList(widget.project.activities),
      ]),
      bottomNavigationBar: BottomBar(),
      //floatingActionButton: _newItemButton(),
    );
  }
}

SliverAppBar _projectDescription(String description) => SliverAppBar(
      floating: false,
      pinned: true,
      leading: Icon(ICONS.LIST),
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          child: Text(description,
              softWrap: true,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center),
          padding: EdgeInsets.symmetric(horizontal: 81),
        ),
      ),
    );

SliverList _projectList(List<Notebook> notebooks) => SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: ProjectCard(context, index, notebooks[index], _onTap),
          );
        },
        childCount: notebooks.length,
      ),
    );

Function _onTap() {}
