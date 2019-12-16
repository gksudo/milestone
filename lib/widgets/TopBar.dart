import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'assets/Colors.dart';
import 'assets/Icons.dart';

Widget TopBar(String title) => AppBar(
      elevation: 0.2,
      backgroundColor: COLORS.SLATE,
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: Icon(ICONS.SEARCH),
          onPressed: () {},
        )
      ],
    );

IconButton _list = IconButton(
  icon: Icon(ICONS.LIST), //sort?
  onPressed: () {},
);

BackButton _back = BackButton();
