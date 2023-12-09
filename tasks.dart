class Task {
  int id;
  String name;
  String description;
  int projectId;
  int areaId;
  DateTime startTime;
  DateTime endTime;
  Duration totalTime;

  Task({
    required this.id,
    required this.name,
    required this.description,
    required this.projectId,
    required this.areaId,
    required this.startTime,
    required this.endTime,
    required this.totalTime,
  });
}

class Project {
  int id;
  String name;
  String description;
  int areaId;

  Project({
    required this.id,
    required this.name,
    required this.description,
    required this.areaId,
  });
}

class Area {
  int id;
  String name;

  Area({
    required this.id,
    required this.name,
  });
}
