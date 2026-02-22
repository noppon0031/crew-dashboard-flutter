import 'package:dashboard_application_by_noppon/appconfigs/app_colors.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_icon.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeQuickActionsSection extends StatelessWidget {
  final int notificationCount;

  const HomeQuickActionsSection({super.key, required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -32), // ⬅️ ดันขึ้น
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _QuickActionsGrid(notificationCount: notificationCount),
            _NotificationCard(notificationCount: notificationCount),
          ],
        ),
      ),
    );
  }
}

class _QuickActionsGrid extends StatelessWidget {
  final int notificationCount;

  const _QuickActionsGrid({required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: 1,
      children: [
        const _ActionCard(icon: DashboardPage.calendar, label: 'Duties'),
        _ActionCard(
          icon: DashboardPage.swap,
          label: 'Changes',
          badge: notificationCount > 0 ? 'N' : null,
        ),
        const _ActionCard(icon: DashboardPage.message, label: 'Message'),
      ],
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? badge;

  const _ActionCard({required this.icon, required this.label, this.badge});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.iconSoftYellow,
                  child: Icon(icon, color: AppColors.primaryYellow),
                ),
                const SizedBox(height: 10),
                Text(label, style: AppTextStyles.quickActionLabel),
              ],
            ),
          ),
        ),

        if (badge != null)
          Align(
            alignment: Alignment.topRight,
            child: Transform.translate(
              offset: const Offset(6, -6),
              child: _Badge(badge!),
            ),
          ),
      ],
    );
  }
}

class _NotificationCard extends StatelessWidget {
  final int notificationCount;

  const _NotificationCard({required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -67),
      child: Container(
        height: 72,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xFFFFF4CC),
              child: Icon(
                DashboardPage.notification,
                color: Color(0xFFFFC700),
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Notification',
                style: AppTextStyles.notificationTitle,
              ),
            ),
            if (notificationCount > 0) _Badge(notificationCount.toString()),
          ],
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  const _Badge(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Text(text, style: AppTextStyles.badgeText),
    );
  }
}
