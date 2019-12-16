import 'package:flutter/material.dart';
import 'package:mnew/models/notebook_model.dart';

import 'assets/Colors.dart';

Widget ProjectCard(
        BuildContext context, int index, Notebook project, Function tap) =>
    Material(
        color: index % 2 == 0 ? COLORS.WHITE24 : COLORS.SLATE,
        child: InkWell(
            onTap: tap,
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              height: 96,
              child: _createCard(project),
            )));

Padding _createCard(Notebook project) => Padding(
    padding: EdgeInsets.all(14),
    child: IntrinsicHeight(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _dateBox(project.date),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _projectName(project.name),
                _projectGoal(project.goal),
              ],
            ),
          ),
        ],
      ),
    ));

Padding _dateBox(String date) => Padding(
    padding: EdgeInsets.all(12.0),
    child: DecoratedBox(
        decoration: BoxDecoration(
          border:
              Border(right: new BorderSide(width: 1.0, color: COLORS.WHITE24)),
        ),
        child: Center(
            child: Text(
          date,
          style: TextStyle(color: COLORS.WHITE, fontSize: 15),
        ))));

Padding _projectName(String name) => Padding(
    padding: EdgeInsets.all(2.0),
    child: Text(
      name,
      style: TextStyle(
          color: COLORS.WHITE, fontWeight: FontWeight.bold, fontSize: 21),
      textAlign: TextAlign.left,
    ));

Padding _projectGoal(String goal) => Padding(
    padding: EdgeInsets.all(2.0),
    child: Text(
      '$goal',
      style: TextStyle(color: COLORS.WHITE),
      textAlign: TextAlign.left,
      overflow: TextOverflow.fade,
      maxLines: 2,
    ));
