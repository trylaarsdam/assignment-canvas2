import 'package:flutter/material.dart';
import '../appBar.dart';

class AssignmentsPage extends StatefulWidget {
  @override
  _AssignmentsPageState createState() => _AssignmentsPageState();

  static const String route = '/assignments';
}

class _AssignmentsPageState extends State<AssignmentsPage> {
  List isHovering = [false, false, false];
  List isSelected = [false, false, true];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarWidget(page: "assignments")),
      body: Text("Assignments Page"),
    );
  }
}