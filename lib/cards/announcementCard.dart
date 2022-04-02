import 'package:assignment_canvas2/classes/announcement.dart';
import 'package:flutter/material.dart';

class AnnouncementCardWidget extends StatefulWidget {
  final Announcement announcement;

  AnnouncementCardWidget({
    required this.announcement
  });

  @override
  _AnnouncementCardWidgetState createState() => _AnnouncementCardWidgetState(
    announcement: announcement,
  );
}

class _AnnouncementCardWidgetState extends State<AnnouncementCardWidget> {
  final Announcement announcement;

  _AnnouncementCardWidgetState({
    required this.announcement,
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
                    Text(announcement.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text(announcement.authorName + " - " + announcement.className, style: const TextStyle(fontSize: 16.0)),
                  ]
                ),
                const Spacer(),
                if (announcement.replyIDs.isNotEmpty)
                  Text("Replies: " + announcement.replyIDs.length.toString() + " ", style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic)),
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
            Text(announcement.description)
          ]
        ) 
      )
    );
  }
}