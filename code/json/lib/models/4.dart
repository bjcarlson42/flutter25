class Four {
  int id;
  String flightName;
  List<Passenger> passenger;

  Four({this.flightName, this.id, this.passenger});

  factory Four.fromJson(Map<String, dynamic> json) {
    var list = json['passengers'] as List;
    List<Passenger> passengerList = list.map((passenger) => Passenger.fromJson(passenger)).toList();
    return Four(
      id: json['id'],
      flightName: json['flight_name'],
      passenger: passengerList
    );
  }
}

class Passenger {
  int id;
  int checkedBags;

  Passenger({this.id, this.checkedBags});

  factory Passenger.fromJson(Map<String, dynamic> json) {
    return Passenger(
      id: json['id'],
      checkedBags: json['checked_bags']
    );
  }
}