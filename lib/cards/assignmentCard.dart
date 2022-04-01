import 'package:flutter/material.dart';




class AssignmentCardWidget extends StatefulWidget {
  final String title;
  final String className;
  final String dueDate;
  final String description;
  final String points;
  final String status;

  AssignmentCardWidget({
    required this.title,
    required this.className,
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
  );
}

class _AssignmentCardWidgetState extends State<AssignmentCardWidget> {
  final String title;
  final String className;
  final String dueDate;
  final String description;
  final String points;
  final String status;

  _AssignmentCardWidgetState({
    required this.title,
    required this.className,
    required this.dueDate,
    required this.description,
    required this.points,
    required this.status,
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
      height: screenSize.height / 7,
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
                    Text(className, style: const TextStyle(fontSize: 16.0)),
                  ]
                ),
                const Spacer(),
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