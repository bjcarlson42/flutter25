class Property{
  double width;
  double height;

  Property({
    this.width,
    this.height
});

  factory Property.fromJson(Map<String, dynamic> json){
    return Property(
      width: json['width'],
      height: json['height']
    );
  }
}

class Three {
  int id;
  String name;
  Property property;

  Three({this.id, this.name, this.property});

  factory Three.fromJson(Map<String, dynamic> json) {
    return Three(
      id: json['id'],
      name: json['name'],
      property: Property.fromJson(json['property'])
    );
  }
}