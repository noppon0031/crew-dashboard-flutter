import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class DutyFooter extends StatelessWidget {
  final bool isWindowOpen;

  const DutyFooter({super.key, required this.isWindowOpen});

  @override
  Widget build(BuildContext context) {
    final bgColor = isWindowOpen
        ? const Color(0xFFFFC700)
        : Colors.grey.shade400;

    final icon = isWindowOpen ? Icons.fingerprint : Icons.lock_outline;
    final text = isWindowOpen ? 'WINDOW OPEN' : 'WINDOW CLOSED';

    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.black87),
            const SizedBox(width: 8),
            Text(text, style: AppTextStyles.footerStatus),
          ],
        ),
      ),
    );
  }
}
