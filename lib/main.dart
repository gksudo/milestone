import 'package:flutter/material.dart';

import 'models/notebook_model.dart';
import 'pages/home_page.dart';

void main() => runApp(Projected());

class Projected extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projected',
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: HomePage(title: 'Notebooks'),
    );
  }
}

