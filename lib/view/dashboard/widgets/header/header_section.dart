// ignore_for_file: unnecessary_brace_in_string_interps, no_leading_underscores_for_local_identifiers

import 'package:dashboard_application_by_noppon/appconfigs/app_image.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final int notificationCount;
  final String dateLabel;
  final String crewRole;
  final String crewName;
  final String staffId;

  const HeaderSection({
    super.key,
    required this.notificationCount,
    required this.dateLabel,
    required this.crewRole,
    required this.crewName,
    required this.staffId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      color: const Color(0xFF25262C),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [const SizedBox(height: 44), _topRow()],
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: _flightBanner()),
        ],
      ),
    );
  }

  Widget _topRow() {
    String _buildCrewDisplay(String role, String name) {
      if (role.isEmpty && name.isEmpty) return 'CREW';
      if (role.isEmpty) return name;
      if (name.isEmpty) return role;
      return '$role. $name';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dayFull,
              style: AppTextStyles.headerDayLabel.copyWith(color: Colors.white),
            ),
            Text(
              dayMonth,
              style: AppTextStyles.headerDate.copyWith(color: Colors.white),
            ),
          ],
        ),

        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _buildCrewDisplay(crewRole, crewName),
                  style: AppTextStyles.headerUserName.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                if (staffId.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFD200),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(staffId, style: AppTextStyles.crewBadge),
                  ),
              ],
            ),
            const SizedBox(width: 12),
            ClipOval(
              child: Image.asset(
                AppImages.logo,
                width: 44,
                height: 44,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String get dayFull {
    final day = dateLabel.split(' ').first;
    const map = {
      'Mon': 'MONDAY',
      'Tue': 'TUESDAY',
      'Wed': 'WEDNESDAY',
      'Thu': 'THURSDAY',
      'Fri': 'FRIDAY',
      'Sat': 'SATURDAY',
      'Sun': 'SUNDAY',
    };
    return map[day] ?? day.toUpperCase();
  }

  String get dayMonth {
    final parts = dateLabel.split(' '); // [Mon, 12, Jan, 26]
    return '${parts[1]} ${parts[2].toUpperCase()}';
  }

  Widget _flightBanner() {
    return ClipPath(
      clipper: _FlightBannerClipper(),
      child: Container(
        height: 49,
        color: const Color(0xFFFFD200),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            children: [
              const Icon(Icons.circle, size: 10, color: Colors.blue),
              const SizedBox(width: 8),
              const Text(
                'FLIGHT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1F1F),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text(
                  'FLY01-02 • DMK-CNX-DMK',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FlightBannerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const cut = 49.0; // ความเฉียง (ปรับได้)

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - cut, 0);
    path.lineTo(size.width, cut);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
