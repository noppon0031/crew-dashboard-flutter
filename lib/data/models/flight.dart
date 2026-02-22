class Flight {
  final String from;
  final String to;
  final String flightNumber;

  const Flight({
    required this.from,
    required this.to,
    required this.flightNumber,
  });

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      from: json['from']?.toString() ?? '',
      to: json['to']?.toString() ?? '',
      flightNumber: json['flight_number']?.toString() ?? '',
    );
  }

  factory Flight.empty() {
    return const Flight(from: '', to: '', flightNumber: '');
  }

  bool get isEmpty => from.isEmpty && to.isEmpty && flightNumber.isEmpty;
}
