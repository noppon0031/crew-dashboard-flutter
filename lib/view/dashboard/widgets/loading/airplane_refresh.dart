// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AirplaneRefresh extends StatelessWidget {
  final double pulledExtent;

  const AirplaneRefresh({super.key, required this.pulledExtent});

  @override
  Widget build(BuildContext context) {
    const appearOffset = 60.0; // ดึงเกินนี้ค่อยเริ่มเห็น
    const maxExtent = 130.0;

    if (pulledExtent < appearOffset) {
      return const SizedBox.shrink();
    }

    final progress =
        ((pulledExtent - appearOffset) / (maxExtent - appearOffset)).clamp(
          0.0,
          1.0,
        );

    return Center(
      child: Opacity(
        opacity: progress,
        child: Transform.translate(
          offset: Offset(0, 20 - (progress * 20)), // ลอยขึ้น
          child: Transform.rotate(
            angle: progress * 6.28,
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const Icon(
                Icons.flight,
                size: 24,
                color: Color(0xFF25262C),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
