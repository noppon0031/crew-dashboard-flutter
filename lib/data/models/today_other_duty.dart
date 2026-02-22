class OtherDuty {
  final String id;
  final String dateLabel;
  final String title;
  final String type;

  OtherDuty({
    required this.id,
    required this.dateLabel,
    required this.title,
    required this.type,
  });

  factory OtherDuty.fromJson(Map<String, dynamic> json) {
    return OtherDuty(
      id: json['id'],
      dateLabel: json['date_label'],
      title: json['title'],
      type: json['type'],
    );
  }
}
