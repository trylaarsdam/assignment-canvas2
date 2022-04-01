import 'package:assignment_canvas2/assignmentCard.dart';
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
  String sortSelection = "Newest First";
  String classSelection = "All Classes";

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: AppBarSingleton.instance.widget(),
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
                  Text("Filter by class: ", style: TextStyle(fontSize: 16.0)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: DropdownButton<String> (
                      value: classSelection,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(color: Color.fromARGB(255, 0, 85, 155)),
                      underline: Container(
                        height: 2,
                        color: Color.fromARGB(255, 0, 85, 155),
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
                    style: const TextStyle(color: Color.fromARGB(255, 0, 85, 155)),
                    underline: Container(
                      height: 2,
                      color: Color.fromARGB(255, 0, 85, 155),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 00.0, right: 00.0),
              child: Scrollbar(
                isAlwaysShown: true,
                controller: _scrollController,
                child: Column(
                  children: [
                    AssignmentCardWidget()
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}