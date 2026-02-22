import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/upcoming_duty.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/duty_scetion/duty_upcoming_card.dart';
import 'package:flutter/material.dart';

class UpcomingDutiesSection extends StatelessWidget {
  final List<UpcomingDuty> duties;

  const UpcomingDutiesSection({super.key, required this.duties});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Text(
                  'Next Duty / Upcoming ',
                  style: AppTextStyles.unifiedCardTitle,
                ),
                Text(
                  '(${duties.length})',
                  style: AppTextStyles.subSectionTitle,
                ),
              ],
            ),
          ),

          ...duties.map((duty) => UpcomingDutyCard(duty: duty)),
        ],
      ),
    );
  }
}
