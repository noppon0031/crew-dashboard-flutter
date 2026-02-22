import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:dashboard_application_by_noppon/data/models/flight.dart';
import 'package:flutter/material.dart';

class FlightTimeline extends StatelessWidget {
  final List<Flight> legs;

  const FlightTimeline({super.key, required this.legs});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9E6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(height: 2, color: Colors.grey.shade300),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildPoints(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPoints() {
    final widgets = <Widget>[];

    for (int i = 0; i < legs.length; i++) {
      final leg = legs[i];

      if (i == 0) {
        widgets.add(
          Expanded(
            child: Center(child: _CodeText(code: leg.from)),
          ),
        );
      }

      widgets.add(Expanded(child: _ArrowPoint(flight: leg.flightNumber)));

      widgets.add(
        Expanded(
          child: Center(child: _CodeText(code: leg.to)),
        ),
      );
    }

    return widgets;
  }
}

class _CodeText extends StatelessWidget {
  final String code;

  const _CodeText({required this.code});

  @override
  Widget build(BuildContext context) {
    return Text(code, style: AppTextStyles.timelineCode);
  }
}

class _ArrowPoint extends StatelessWidget {
  final String flight;

  const _ArrowPoint({required this.flight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.arrow_forward, color: Colors.grey, size: 14),
        const SizedBox(height: 2),
        Text(flight, style: AppTextStyles.timelineFlightNumber),
      ],
    );
  }
}
