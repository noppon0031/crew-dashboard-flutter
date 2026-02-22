class OtherDuty {
  final String id;
  final String dateLabel;
  final String title;
  final String type;

  const OtherDuty({
    required this.id,
    required this.dateLabel,
    required this.title,
    required this.type,
  });

  factory OtherDuty.fromJson(Map<String, dynamic> json) {
    return OtherDuty(
      id: json['id']?.toString() ?? '',
      dateLabel: json['date_label']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      type: json['type']?.toString() ?? '',
    );
  }

  factory OtherDuty.empty() {
    return const OtherDuty(id: '', dateLabel: '', title: '', type: '');
  }

  bool get isEmpty =>
      id.isEmpty && dateLabel.isEmpty && title.isEmpty && type.isEmpty;
}
