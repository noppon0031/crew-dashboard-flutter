// ignore_for_file: deprecated_member_use

import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class DutyUnifiedCard extends StatelessWidget {
  final Color accentColor;
  final IconData icon;
  final String dateLabel;
  final String title;

  const DutyUnifiedCard({
    super.key,
    required this.accentColor,
    required this.icon,
    required this.dateLabel,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 80,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(18),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(DashboardPage.training, color: accentColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(dateLabel, style: AppTextStyles.unifiedCardDate),
                const SizedBox(height: 4),
                Text(title, style: AppTextStyles.unifiedCardTitle),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.chevron_right, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
