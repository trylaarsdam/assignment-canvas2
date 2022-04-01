import 'package:flutter/material.dart';




class AssignmentCardWidget extends StatefulWidget {
  @override
  _AssignmentCardWidgetState createState() => _AssignmentCardWidgetState();
}

class _AssignmentCardWidgetState extends State<AssignmentCardWidget> {
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
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Assignment 1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Class 1", style: TextStyle(fontSize: 16.0)),
                  ]
                )
              ]
            )
          ]
        ) 
      )
    );
  }
}