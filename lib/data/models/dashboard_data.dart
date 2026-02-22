import 'package:dashboard_application_by_noppon/data/models/today_duty.dart';
import 'package:dashboard_application_by_noppon/data/models/upcoming_duty.dart';

class DashboardData {
  final int notificationsCount;
  final TodayDuty todayDuty;
  final List<UpcomingDuty> upcomingDuties;

  DashboardData({
    required this.notificationsCount,
    required this.todayDuty,
    required this.upcomingDuties,
  });

  factory DashboardData.fromJson(Map<String, dynamic> json) {
    return DashboardData(
      notificationsCount: json['notifications_count'],
      todayDuty: TodayDuty.fromJson(json['today_duty']),
      upcomingDuties: (json['upcoming_duties'] as List)
          .map((e) => UpcomingDuty.fromJson(e))
          .toList(),
    );
  }

  factory DashboardData.empty() {
    return DashboardData(
      notificationsCount: 0,
      todayDuty: TodayDuty.empty(),
      upcomingDuties: const [],
    );
  }
}
