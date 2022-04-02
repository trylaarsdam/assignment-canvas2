class Announcement {
  String id;
  String name;
  String className;
  String classID;
  String authorName;
  String description;
  String status;
  List<String> replyIDs;

  Announcement({
    required this.id,
    required this.name,
    required this.className,
    required this.classID,
    required this.authorName,
    required this.description,
    required this.status,
    required this.replyIDs
  });
}