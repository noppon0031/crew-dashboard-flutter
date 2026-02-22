import 'package:dashboard_application_by_noppon/data/models/dashboard_data.dart';

class DashboardResponse {
  final String status;
  final DashboardData data;

  DashboardResponse({required this.status, required this.data});

  factory DashboardResponse.fromJson(Map<String, dynamic> json) {
    return DashboardResponse(
      status: json['status'],
      data: DashboardData.fromJson(json['data']),
    );
  }
}
