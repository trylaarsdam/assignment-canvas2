import 'package:flutter/material.dart';
import '../appBar.dart';

class AnnouncementsPage extends StatefulWidget {
  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();

  static const String route = '/announcements';
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  List isHovering = [false, false, false];
  List isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarWidget(page: "announcements")),
      body: Text("announcements"),
    );
  }
}