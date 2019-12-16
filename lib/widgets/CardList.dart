import 'package:flutter/material.dart';
import 'package:mnew/pages/project_page.dart';
import 'package:mnew/widgets/ProjectCard.dart';

Widget CardList(BuildContext context, List projects) => ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(context, index, projects[index], () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProjectPage(project: projects[index])),
          );
        });
      },
    );
