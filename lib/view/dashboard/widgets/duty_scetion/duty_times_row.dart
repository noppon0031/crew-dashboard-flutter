import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class DutyTimesRow extends StatelessWidget {
  const DutyTimesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _TimeItem(label: 'Briefing', time: '06:30'),
        _TimeItem(label: 'Departure', time: '08:00'),
        _TimeItem(label: 'Arrival', time: '09:20'),
      ],
    );
  }
}

class _TimeItem extends StatelessWidget {
  final String label;
  final String time;

  const _TimeItem({required this.label, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: AppTextStyles.timeRowLabel),
        const SizedBox(height: 4),
        Text(time, style: AppTextStyles.timeRowValue),
      ],
    );
  }
}
