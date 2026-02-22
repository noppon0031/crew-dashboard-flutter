class DutyTimings {
  final String report;
  final String dutyFdp;
  final String offClear;
  final String flightTime;
  final String tafb;
  final String layover;

  DutyTimings({
    required this.report,
    required this.dutyFdp,
    required this.offClear,
    required this.flightTime,
    required this.tafb,
    required this.layover,
  });

  factory DutyTimings.fromJson(Map<String, dynamic> json) {
    return DutyTimings(
      report: json['report'],
      dutyFdp: json['duty_fdp'],
      offClear: json['off_clear'],
      flightTime: json['flight_time'],
      tafb: json['tafb'],
      layover: json['layover'],
    );
  }
}
