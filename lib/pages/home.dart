import 'package:flutter/material.dart';
import '../appBar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  static const String route = '';
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarWidget(page: "home")),
      body: Container(),
    );
  }
}