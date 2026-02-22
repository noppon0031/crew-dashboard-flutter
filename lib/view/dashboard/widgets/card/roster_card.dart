import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class RosterCard extends StatelessWidget {
  const RosterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFFFF7D6),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              DashboardPage.roster,
              color: Color(0xFFFFC107),
              size: 28,
            ),
          ),
          const Spacer(),
          const Text('ROSTER', style: AppTextStyles.cardTitle),
          const SizedBox(height: 4),
          const Text(
            'List and Monthly View',
            style: AppTextStyles.cardSubtitle,
          ),
        ],
      ),
    );
  }
}
