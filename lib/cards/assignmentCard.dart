import 'package:flutter/material.dart';

class AssignmentCardWidget extends StatefulWidget {
  final String title;
  final String className;
  final String dueDate;
  final String description;
  final String points;
  final String status;
  final String classID;
  final String id;
  final String authorName;

  AssignmentCardWidget({
    required this.title,
    required this.className,
    required this.classID,
    required this.authorName,
    required this.id,
    required this.dueDate,
    required this.description,
    required this.points,
    required this.status,
  });

  @override
  _AssignmentCardWidgetState createState() => _AssignmentCardWidgetState(
    title: title,
    className: className,
    dueDate: dueDate,
    description: description,
    points: points,
    status: status,
    classID: classID,
    id: id,
    authorName: authorName,
  );
}

class _AssignmentCardWidgetState extends State<AssignmentCardWidget> {
  final String title;
  final String className;
  final String dueDate;
  final String description;
  final String points;
  final String status;
  final String classID;
  final String id;
  final String authorName;

  _AssignmentCardWidgetState({
    required this.title,
    required this.className,
    required this.dueDate,
    required this.description,
    required this.points,
    required this.status,
    required this.classID,
    required this.authorName,
    required this.id,
  });

  List isHovering = [false, false, false];
  List isSelected = [false, false, false];


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; 

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 150,
      width: screenSize.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(authorName + " - " + className, style: const TextStyle(fontSize: 16.0)),
                  ]
                ),
                const Spacer(),
                Text("Points: " + points + " | Due: " + dueDate + " ", style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic)),
                ButtonBar(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('View in Canvas', style: TextStyle(color: Colors.blue)), 
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: const BorderSide(width: 2.0, color: Colors.blue),
                      ),
                      
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      label: const Text('Mark Done', style: TextStyle(color: Colors.green)), 
                      icon: const Icon(Icons.check, color: Colors.green),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        side: const BorderSide(width: 2.0, color: Colors.green),
                      ),
                    ),
                  ],
                )
              ]
            ),
            const Divider(),
            Text(description)
          ]
        ) 
      )
    );
  }
}