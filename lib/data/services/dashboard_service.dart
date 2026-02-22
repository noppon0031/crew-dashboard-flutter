import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/dashboard_response.dart';

class DashboardService {
  Future<DashboardResponse> fetchDashboard() async {
    await Future.delayed(const Duration(milliseconds: 800)); // mock loading

    final jsonString = await rootBundle.loadString(
      'assets/mock/dashboard.json',
    );

    final jsonMap = json.decode(jsonString);
    return DashboardResponse.fromJson(jsonMap);
  }
}
