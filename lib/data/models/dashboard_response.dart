import 'package:dashboard_application_by_noppon/data/models/dashboard_data.dart';

class DashboardResponse {
  final String status;
  final DashboardData data;
  

  const DashboardResponse({required this.status, required this.data});

  factory DashboardResponse.fromJson(Map<String, dynamic> json) {
    return DashboardResponse(
      status: json['status']?.toString() ?? '',
      data: json['data'] is Map<String, dynamic>
          ? DashboardData.fromJson(json['data'])
          : DashboardData.empty(),
    );
  }
  

  factory DashboardResponse.empty() {
    return DashboardResponse(status: '', data: DashboardData.empty());
  }

  bool get isSuccess => status.toLowerCase() == 'success';
}
