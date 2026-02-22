class Flight {
  final String from;
  final String to;
  final String flightNumber;

  Flight({required this.from, required this.to, required this.flightNumber});

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      from: json['from'],
      to: json['to'],
      flightNumber: json['flight_number'],
    );
  }
}
