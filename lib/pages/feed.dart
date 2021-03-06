import 'package:flutter/material.dart';
import '../appBar.dart';
import 'package:assignment_canvas2/cards/assignmentCard.dart';
import 'package:assignment_canvas2/cards/announcementCard.dart';
import 'package:assignment_canvas2/classes/announcement.dart';
import 'package:assignment_canvas2/classes/assignment.dart';
import 'package:assignment_canvas2/classes/user.dart';
import 'package:assignment_canvas2/classes/course.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();

  static const String route = '/feed';
}

class _FeedPageState extends State<FeedPage> {
  List isHovering = [false, false, false];
  List isSelected = [true, false, false];
  String sortSelection = "Newest First";
  String classSelection = "All Classes";
  bool showingCompleted = true;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarWidget(page: "feed"),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  Text("Your Feed", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Show Completed: ", style: TextStyle(fontSize: 16.0)),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Switch(
                      value: showingCompleted,
                      onChanged: (value) {
                        setState(() {
                          showingCompleted = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ),
                  Text("Selected Class: ", style: TextStyle(fontSize: 16.0)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: DropdownButton<String> (
                      value: classSelection,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.blue),
                      underline: Container(
                        height: 2,
                        color: Colors.blue,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          classSelection = newValue!;
                        });
                      },
                      items: <String>['All Classes', 'Class 1', 'Class 2']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Text("Sort by: ", style: TextStyle(fontSize: 16.0)),
                  DropdownButton<String> (
                    value: sortSelection,
                    icon: Icon(Icons.arrow_drop_down),
                    elevation: 16,
                    style: const TextStyle(color: Colors.blue),
                    underline: Container(
                      height: 2,
                      color: Colors.blue,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        sortSelection = newValue!;
                      });
                    },
                    items: <String>['Newest First', 'Oldest First', 'Due Date']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                physics: const PageScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, left: 00.0, right: 00.0),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: AssignmentCardWidget(assignment: Assignment(name: "Assignment 1", className: "Class 1", dueDate: "4/8/22", description: "this assignment is worth 20 points and is due on friday", points: "20", status: "not complete", classID: "1", id: "1", authorName: "Teacher Name")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: AssignmentCardWidget(assignment: Assignment(name: "Assignment 2", className: "Class 1", dueDate: "4/10/22", description: "this assignment is worth 40 points and is due on sunday", points: "40", status: "not complete", classID: "1", id: "2", authorName: "Teacher Name")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: AnnouncementCardWidget(announcement: Announcement(name: "Announcement 1", className: "Class 2", description: "this is the content of an announcement \nthis is another line", status: "complete", classID: "1", id: "2", authorName: "Teacher Name", replyIDs: [
                                Announcement(name: "Announcement Reply", className: "Class 2", description: "this is the content of a reply \nthis is another line", status: "complete", classID: "1", id: "2", authorName: "Teacher Name", replyIDs: [])
                              ]))
                            )
                          ],
                        )
                      ),
                    )
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}