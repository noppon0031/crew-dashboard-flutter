// ignore_for_file: avoid_print

import 'package:get/get.dart';
import '../data/models/dashboard_data.dart';
import '../data/services/dashboard_service.dart';

class DashboardController extends GetxController {
  final DashboardService _service = DashboardService();

  var isLoading = true.obs;
  var error = ''.obs;
  DashboardData? dashboardData;

  @override
  void onInit() {
    super.onInit();
    loadDashboard();
  }

  Future<void> loadDashboard() async {
    try {
      isLoading.value = true;
      error.value = '';

      final response = await _service.fetchDashboard();
      dashboardData = response.data;
    } catch (e) {
      error.value = 'Failed to load dashboard';
    } finally {
      isLoading.value = false;
      print('Dashboard Data => ${dashboardData?.todayDuty.route}'); // Debug log
    }
  }
}
