import 'package:flutter/material.dart';

import 'assets/Colors.dart';
import 'assets/Icons.dart';

Widget BottomBar() => Container(
      height: 55.0,
      child: BottomAppBar(
        color: COLORS.SLATE,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(ICONS.HOME, color: COLORS.WHITE),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(ICONS.ACCOUNT, color: COLORS.WHITE),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
