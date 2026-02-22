class UpcomingDuty {
  final String id;
  final String dateNumber;
  final String month;
  final String dayTypeLabel;
  final String title;
  final bool isUrgent;
  final String? urgentLabel;

  UpcomingDuty({
    required this.id,
    required this.dateNumber,
    required this.month,
    required this.dayTypeLabel,
    required this.title,
    required this.isUrgent,
    this.urgentLabel,
  });

  factory UpcomingDuty.fromJson(Map<String, dynamic> json) {
    return UpcomingDuty(
      id: json['id'],
      dateNumber: json['date_number'],
      month: json['month'],
      dayTypeLabel: json['day_type_label'],
      title: json['title'],
      isUrgent: json['is_urgent'],
      urgentLabel: json['urgent_label'],
    );
  }
}
