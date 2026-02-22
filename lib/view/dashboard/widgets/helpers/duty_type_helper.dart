import 'package:flutter/material.dart';

class DutyTypeHelper {
  static Color accentColor(String type) {
    switch (type) {
      case 'training':
        return const Color(0xFF7B4DFF); // ม่วง
      case 'standby':
        return const Color(0xFFFF9800); // ส้ม
      case 'flight':
        return const Color(0xFF2196F3); // น้ำเงิน
      default:
        return const Color(0xFFE0E0E0); // เทา
    }
  }

  static IconData icon(String type) {
    switch (type) {
      case 'training':
        return Icons.edit_note;
      case 'standby':
        return Icons.access_time;
      case 'flight':
        return Icons.flight_takeoff;
      default:
        return Icons.assignment;
    }
  }
}
