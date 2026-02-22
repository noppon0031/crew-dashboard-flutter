class DutyTimings {
  final String report;
  final String dutyFdp;
  final String offClear;
  final String flightTime;
  final String tafb;
  final String layover;

  const DutyTimings({
    required this.report,
    required this.dutyFdp,
    required this.offClear,
    required this.flightTime,
    required this.tafb,
    required this.layover,
  });

  factory DutyTimings.fromJson(Map<String, dynamic> json) {
    return DutyTimings(
      report: json['report']?.toString() ?? '',
      dutyFdp: json['duty_fdp']?.toString() ?? '',
      offClear: json['off_clear']?.toString() ?? '',
      flightTime: json['flight_time']?.toString() ?? '',
      tafb: json['tafb']?.toString() ?? '',
      layover: json['layover']?.toString() ?? '',
    );
  }

  factory DutyTimings.empty() {
    return const DutyTimings(
      report: '',
      dutyFdp: '',
      offClear: '',
      flightTime: '',
      tafb: '',
      layover: '',
    );
  }

  bool get isEmpty =>
      report.isEmpty &&
      dutyFdp.isEmpty &&
      offClear.isEmpty &&
      flightTime.isEmpty &&
      tafb.isEmpty &&
      layover.isEmpty;
}
