import 'package:flutter/material.dart';
import './home.dart';
import './feed.dart';

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
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

