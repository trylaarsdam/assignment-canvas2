import 'package:flutter/material.dart';
import './feed.dart';
import './announcements.dart';
import './assignments.dart';

class AppBarSingleton {
  static AppBarSingleton? _instance;

  AppBarSingleton._();

  static AppBarSingleton get instance => _instance ??= AppBarSingleton._();

  static var widgetSingleton = AppBarWidget();

  AppBarWidget widget() {
    return widgetSingleton;
  }
}

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List isHovering = [false, false, false];
  List isSelected = [false, false, false];


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; 

    return 
        Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text('Assignment Canvas', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected[0] = true;
                          });
                          Navigator.of(context).pushNamed(FeedPage.route);
                        },
                        onHover: (value) {
                          setState(() => isHovering[0] = value);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Feed',
                              style: TextStyle(
                                color: isHovering[0]
                                    ? Color.fromARGB(255, 0, 255, 255)
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: isHovering[0] || isSelected[0] ? 5 : 0),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: isHovering[0] || isSelected[0],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected[1] = true;
                          });
                          Navigator.of(context).pushNamed(AnnouncementsPage.route);
                        },
                        onHover: (value) {
                          setState(() => isHovering[1] = value);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Announcements',
                              style: TextStyle(
                                color: isHovering[1]
                                    ? Color.fromARGB(255, 0, 255, 255)
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: isHovering[1] || isSelected[1] ? 5 : 0),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: isHovering[1] || isSelected[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected[2] = true;
                          });
                          Navigator.of(context).pushNamed(AssignmentsPage.route);
                        },
                        onHover: (value) {
                          setState(() => isHovering[2] = value);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Assignments',
                              style: TextStyle(
                                color: isHovering[2]
                                    ? Color.fromARGB(255, 0, 255, 255)
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: isHovering[2] || isSelected[2] ? 5 : 0),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: isHovering[2] || isSelected[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}