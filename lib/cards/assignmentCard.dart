import 'package:assignment_canvas2/classes/assignment.dart';
import 'package:flutter/material.dart';

class AssignmentCardWidget extends StatefulWidget {
  final Assignment assignment;

  AssignmentCardWidget({
    required this.assignment,
  });

  @override
  _AssignmentCardWidgetState createState() => _AssignmentCardWidgetState(
    assignment: assignment,
  );
}

class _AssignmentCardWidgetState extends State<AssignmentCardWidget> {
  final Assignment assignment;

  _AssignmentCardWidgetState({
    required this.assignment,
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
                    Text(assignment.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(assignment.authorName + " - " + assignment.className, style: const TextStyle(fontSize: 16.0)),
                  ]
                ),
                const Spacer(),
                Text("Points: " + assignment.points + " | Due: " + assignment.dueDate + " ", style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic)),
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
            Text(assignment.description)
          ]
        ) 
      )
    );
  }
}