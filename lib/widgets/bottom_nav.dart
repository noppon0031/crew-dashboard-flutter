// ignore_for_file: deprecated_member_use

import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:flutter/material.dart';

class DashboardBottomNav extends StatelessWidget {
  const DashboardBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewPadding.bottom;

    return Container(
      clipBehavior: Clip.none,
      padding: EdgeInsets.only(top: 12, bottom: bottomInset),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _NavItem(
                        icon: NavBarIcon.home,
                        label: 'Home',
                        active: true,
                      ),
                      _NavItem(icon: NavBarIcon.swap_2, label: 'Ops'),
                    ],
                  ),
                ),
                const SizedBox(width: 88),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _NavItem(icon: NavBarIcon.message_2, label: 'Message'),
                      _NavItem(
                        icon: Icons.menu,
                        label: 'More',
                      ), //จริงๆควรเป็น NavBarIcon.more ที่ผม export มาจาก figma แต่ไม่มีไอคอนนี้ใน font เลยขอใช้ของ Flutter แทน
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(top: -28, child: _CenterAirplaneButton()),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const _NavItem({
    required this.icon,
    required this.label,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFFFFC107) : Colors.black87;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}

class _CenterAirplaneButton extends StatelessWidget {
  const _CenterAirplaneButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF7D6),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: const Icon(NavBarIcon.roster, color: Color(0xFFFFC107), size: 32),
    );
  }
}
