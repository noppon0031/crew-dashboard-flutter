import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/today_duty.dart';
import 'package:flutter/material.dart';

class DutyHeader extends StatelessWidget {
  final TodayDuty todayDuty;

  const DutyHeader({super.key, required this.todayDuty});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF26272D),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF1363FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(DashboardPage.pilot_hat, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${todayDuty.dutyId} • ${todayDuty.route}',
                  style: AppTextStyles.dutyHeaderTitle,
                ),
                const SizedBox(height: 4),
                Text(todayDuty.date, style: AppTextStyles.dutyHeaderDate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
