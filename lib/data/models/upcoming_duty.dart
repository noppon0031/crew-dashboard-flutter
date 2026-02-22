class UpcomingDuty {
  final String id;
  final String dateNumber;
  final String month;
  final String dayTypeLabel;
  final String title;
  final bool isUrgent;
  final String? urgentLabel;

  const UpcomingDuty({
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
      id: json['id']?.toString() ?? '',
      dateNumber: json['date_number']?.toString() ?? '',
      month: json['month']?.toString() ?? '',
      dayTypeLabel: json['day_type_label']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      isUrgent: json['is_urgent'] == true,
      urgentLabel: json['urgent_label']?.toString(),
    );
  }

  factory UpcomingDuty.empty() {
    return const UpcomingDuty(
      id: '',
      dateNumber: '',
      month: '',
      dayTypeLabel: '',
      title: '',
      isUrgent: false,
      urgentLabel: null,
    );
  }

  bool get hasUrgentLabel =>
      isUrgent && urgentLabel != null && urgentLabel!.isNotEmpty;
}
