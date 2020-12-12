class One {
  int id;
  String name;
  String gender;

  One({this.id,this.name,this.gender});

  factory One.fromJson(Map<String, dynamic> json) {
    return One(
      id: json['id'],
      name: json['name'],
      gender: json['gender']
    );
  }
}