class Class {
  int id;
  String name;
  int level;

  Class({this.id, this.name, this.level});

  factory Class.fromJson(Map<String, dynamic> json) {
    return Class(
      id: json['id'],
      name: json['class_name'],
      level: json['level']
    );
  }
}

class Five {
  List<Class> classes;

  Five({this.classes});

  factory Five.fromJson(List<dynamic> json) {
    List<Class> classes = new List<Class>();
    classes = json.map((c) => Class.fromJson(c)).toList();
    return Five(
      classes: classes
    );
  }
}