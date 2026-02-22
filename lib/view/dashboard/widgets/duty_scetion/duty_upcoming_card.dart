// ignore_for_file: deprecated_member_use

import 'package:dashboard_application_by_noppon/appconfigs/app_colors.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/upcoming_duty.dart';
import 'package:flutter/material.dart';

class UpcomingDutyCard extends StatelessWidget {
  final UpcomingDuty duty;

  const UpcomingDutyCard({super.key, required this.duty});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Stack(
        children: [
          Container(
            height: 82,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(18),
                    ),
                  ),
                ),

                /// Date
                SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 56,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(duty.month, style: AppTextStyles.upcomingMonth),
                        const SizedBox(height: 4),
                        Text(
                          duty.dateNumber,
                          style: AppTextStyles.upcomingDateNumber,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                /// Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            duty.dayTypeLabel,
                            style: AppTextStyles.upcomingDayType,
                          ),
                          if (duty.isUrgent) ...[
                            const SizedBox(width: 8),
                            const Icon(
                              DashboardPage.roster,
                              size: 14,
                              color: Color(0xFFFFB300),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              duty.urgentLabel ?? '',
                              style: AppTextStyles.upcomingUrgent,
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(duty.title, style: AppTextStyles.upcomingTitle),
                    ],
                  ),
                ),

                const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
