// ignore_for_file: unnecessary_string_interpolations

import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/duty_timings.dart';
import 'package:flutter/material.dart';

class DutyTimesGrid extends StatelessWidget {
  final DutyTimings timings;
  const DutyTimesGrid({super.key, required this.timings});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        _cell('ON (REPORT)', '${timings.report}', Colors.green),
        _cell('DUTY (FDP)', '${timings.dutyFdp}', Colors.black),
        _cell('OFF (CLEAR)', '${timings.offClear}', Colors.red),
        _cell('FLIGHT TIME', '${timings.flightTime}', Colors.orange),
        _cell('TAFB', '${timings.tafb}', Colors.black),
        _cell('LAYOVER', '${timings.layover}', Colors.grey),
      ],
    );
  }

  Widget _cell(String title, String value, Color color) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.timeGridLabel),
          const SizedBox(height: 4),
          Text(
            value,
            style: AppTextStyles.timeGridValue.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
