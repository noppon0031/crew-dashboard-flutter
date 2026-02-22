// ignore_for_file: deprecated_member_use

import 'package:dashboard_application_by_noppon/data/models/today_other_duty.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/duty_scetion/duty_simple_card.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_application_by_noppon/view/dashboard/widgets/helpers/duty_type_helper.dart';

class TodayOtherDutyCard extends StatelessWidget {
  final OtherDuty duty;

  const TodayOtherDutyCard({super.key, required this.duty});

  @override
  Widget build(BuildContext context) {
    return DutyUnifiedCard(
      accentColor: DutyTypeHelper.accentColor(duty.type),
      icon: DutyTypeHelper.icon(duty.type),
      dateLabel: duty.dateLabel,
      title: duty.title,
    );
  }
}
