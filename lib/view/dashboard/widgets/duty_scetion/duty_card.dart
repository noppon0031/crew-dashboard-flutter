// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:dashboard_application_by_noppon/data/models/today_duty.dart';
import 'duty_header.dart';
import 'duty_times_grid.dart';
import 'duty_flight_timeline.dart';
import 'duty_footer.dart';

class DutyCard extends StatelessWidget {
  final TodayDuty todayDuty;

  const DutyCard({super.key, required this.todayDuty});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color.from(alpha: 0.122, red: 0, green: 0, blue: 0),
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DutyHeader(todayDuty: todayDuty),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 90),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    DutyTimesGrid(timings: todayDuty.timings),
                    const SizedBox(height: 16),
                    FlightTimeline(legs: todayDuty.flights),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: DutyFooter(isWindowOpen: todayDuty.isWindowOpen),
        ),
      ],
    );
  }
}
