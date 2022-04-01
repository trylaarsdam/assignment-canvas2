import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(AssignmentCanvasApp());
}

class AssignmentCanvasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Canvas',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

