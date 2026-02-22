import 'package:dashboard_application_by_noppon/appconfigs/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  /// App title / Header title เช่น "Crew Dashboard"
  static const appTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 28 / 22,
    letterSpacing: 1.2,
    color: Colors.white,
  );
  static const headerDayLabel = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 16 / 12,
    letterSpacing: 0.5,
  );

  static const headerDate = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 22,
    height: 28 / 22,
  );

  static const headerCaption = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.textOnDark,
  );

  static const headerUserName = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 24 / 18,
  );

  static const cardTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w800,
    height: 24 / 18,
    color: AppColors.textPrimary,
  );

  static const cardSubtitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
    color: AppColors.textSecondary,
  );
  static const cardTitleDark = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w800,
    height: 24 / 18,
    color: AppColors.textOnDark,
  );

  static const cardStatus = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.textOnDark,
  );

  /// Airport code เช่น BKK / CNX
  static const timelineCode = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 18 / 14,
    color: AppColors.textYellow,
  );

  /// Flight number ใต้ลูกศร
  static const timelineFlightNumber = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.textYellow,
  );

  /// Text ใน footer ของ Duty card (WINDOW OPEN / CLOSED)
  static const footerStatus = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 22 / 16,
    color: AppColors.textPrimary,
  );

  /// Duty ID + Route (เช่น DUTY01 • BKK → CNX)
  static const dutyHeaderTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 20 / 14,
    color: AppColors.textOnDark,
  );

  /// วันที่ใต้ title
  static const dutyHeaderDate = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.textOnDark,
  );

  /// วันที่บน unified card
  static const unifiedCardDate = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    color: AppColors.textSecondary,
  );

  /// title หลักของ unified card
  static const unifiedCardTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 22 / 16,
    color: AppColors.textPrimary,
  );

  /// label ด้านบน (ON / DUTY / OFF ฯลฯ)
  static const timeGridLabel = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.textSecondary,
  );

  /// value เวลา (ตัวเลขหลัก)
  static const timeGridValue = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 24 / 18,
  );

  /// label ใต้ icon / เหนือเวลา (Briefing / Departure / Arrival)
  static const timeRowLabel = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    height: 16 / 12,
    color: AppColors.textOnDark,
  );

  /// เวลาใน row
  static const timeRowValue = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.textOnDark,
  );

  /// เดือนในกล่องวันที่ (JAN / FEB)
  static const upcomingMonth = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    color: AppColors.textPrimary,
  );

  /// วันที่ตัวเลขใหญ่
  static const upcomingDateNumber = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w800,
    height: 28 / 20,
    color: AppColors.textPrimary,
  );

  /// ประเภทวัน (OFF / DUTY ฯลฯ)
  static const upcomingDayType = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    color: AppColors.textSecondary,
  );

  /// label ด่วน
  static const upcomingUrgent = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 16 / 12,
    color: AppColors.urgent,
  );

  /// title หลักของ upcoming duty
  static const upcomingTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 22 / 16,
    color: AppColors.textPrimary,
  );

  /// Section title เช่น Next Duty / Upcoming (n)
  static const sectionTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 22,
    fontWeight: FontWeight.w800,
    height: 28 / 22,
    color: AppColors.textPrimary,
  );

  static const subSectionTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 28 / 22,
    color: Color(0xDD8D92A3),
  );

  /// label ใต้ icon ใน Quick Action
  static const quickActionLabel = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.textPrimary,
  );

  /// title ใน Notification card
  static const notificationTitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.textPrimary,
  );

  /// badge text (N / number)
  static const badgeText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.textOnDark,
  );

  /// Subtitle ใต้ App title เช่น "Ready for duty"
  static const appSubtitle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
    color: Colors.white54,
  );

  /// Staff ID / Crew badge เช่น "DD / 12345"
  static const crewBadge = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 16 / 12,
    color: AppColors.textPrimary,
  );
}
