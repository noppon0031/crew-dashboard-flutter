// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:dashboard_application_by_noppon/appconfigs/app_image.dart';
import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignOnCard extends StatelessWidget {
  const SignOnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      decoration: BoxDecoration(
        color: const Color(0xFF25262C),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Colors.white.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.fingerprint,
                color: Color(0xFFFFC107),
                size: 26,
              ),
            ),
          ),

          Positioned(
            left: 20,
            right: 0,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('SIGN ON', style: AppTextStyles.cardTitleDark),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    CircleAvatar(radius: 5, backgroundColor: Color(0xFF2ECC71)),
                    SizedBox(width: 8),
                    Text('Window Open', style: AppTextStyles.cardStatus),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AppImages.signOn,
              width: 52,
              height: 70,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
