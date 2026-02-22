import 'package:dashboard_application_by_noppon/data/models/crewInfo.dart';
import 'package:dashboard_application_by_noppon/data/models/duty_timings.dart';
import 'package:dashboard_application_by_noppon/data/models/flight.dart';
import 'package:dashboard_application_by_noppon/data/models/today_other_duty.dart';

class TodayDuty {
  final String dutyId;
  final String route;
  final String date;
  final DutyTimings timings;
  final List<Flight> flights;
  final bool isWindowOpen;
  final List<OtherDuty> otherDuties;
  final CrewInfo crew;

  TodayDuty({
    required this.dutyId,
    required this.route,
    required this.date,
    required this.timings,
    required this.flights,
    required this.isWindowOpen,
    required this.otherDuties,
    required this.crew,
  });

  factory TodayDuty.fromJson(Map<String, dynamic> json) {
    return TodayDuty(
      dutyId: json['duty_id'],
      route: json['route'],
      date: json['date'],
      timings: DutyTimings.fromJson(json['timings']),
      flights: (json['flights'] as List)
          .map((e) => Flight.fromJson(e))
          .toList(),
      isWindowOpen: json['is_window_open'],
      otherDuties: (json['other_duties'] as List? ?? [])
          .map((e) => OtherDuty.fromJson(e))
          .toList(),
      crew: json['crew'] != null
          ? CrewInfo.fromJson(json['crew'])
          : CrewInfo.empty(),
    );
  }
}
