import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/today_duty.dart';
import 'package:dashboard_application_by_noppon/data/models/upcoming_duty.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/duty_scetion/today_other_dutycard.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/duty_scetion/upcoming_list.dart';
import 'package:flutter/material.dart';
import 'duty_card.dart';

class TodayDutiesSection extends StatelessWidget {
  final TodayDuty todayDuty;
  final List<UpcomingDuty> upcomingDuties;

  const TodayDutiesSection({
    super.key,
    required this.todayDuty,
    required this.upcomingDuties,
  });

  @override
  Widget build(BuildContext context) {
    final totalTodayDuties = 1 + todayDuty.otherDuties.length;
    return Transform.translate(
      offset: const Offset(0, -70),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Today’s Duties ", style: AppTextStyles.sectionTitle),
                Text(
                  "($totalTodayDuties)",
                  style: AppTextStyles.subSectionTitle,
                ),
              ],
            ),
            const SizedBox(height: 12),
            DutyCard(todayDuty: todayDuty),
            ...todayDuty.otherDuties.map(
              (duty) => Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TodayOtherDutyCard(duty: duty),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: UpcomingDutiesSection(duties: upcomingDuties),
            ),
          ],
        ),
      ),
    );
  }
}
