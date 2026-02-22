import 'package:dashboard_application_by_noppon/appconfigs/app_text_styles.dart';
import 'package:flutter/material.dart';

class AirplaneLoading extends StatefulWidget {
  const AirplaneLoading({super.key});

  @override
  State<AirplaneLoading> createState() => _AirplaneLoadingState();
}

class _AirplaneLoadingState extends State<AirplaneLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * 3.14159,
                child: child,
              );
            },
            child: const Icon(Icons.flight, size: 48, color: Colors.blueAccent),
          ),
          const SizedBox(height: 16),
          const Text(
            'Preparing your duty...',
            style: AppTextStyles.cardSubtitle,
          ),
        ],
      ),
    );
  }
}
