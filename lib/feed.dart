import 'package:flutter/material.dart';
import './appBar.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();

  static const String route = '/feed';
}

class _FeedPageState extends State<FeedPage> {
  List isHovering = [false, false, false];
  List isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarSingleton.instance.widget(),
      ),
      body: Text("feed"),
    );
  }
}