class Two {
  final String name;
  final List<String> classes;

  Two({this.name, this.classes});

  factory Two.fromJson(Map<String, dynamic> json) {
    var classesFromJson = json['classes'];
    List<String> classesList = classesFromJson.cast<String>();
    return Two(
      name: json['name'],
      classes: classesList
    );
  }
}