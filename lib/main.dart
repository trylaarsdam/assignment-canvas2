import 'package:flutter/material.dart';
import './home.dart';
import './feed.dart';
import './announcements.dart';
import './assignments.dart';

void main() {
  runApp(AssignmentCanvasApp());
}

class AssignmentCanvasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Canvas',
      initialRoute: '/',
      routes: {
        HomePage.route: (context) => HomePage(),
        FeedPage.route: (context) => FeedPage(),
        AnnouncementsPage.route: (context) => AnnouncementsPage(),
        AssignmentsPage.route: (context) => AssignmentsPage(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

