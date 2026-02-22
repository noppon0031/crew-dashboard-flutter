// ignore_for_file: file_names

class CrewInfo {
  final String name;
  final String staffId;
  final String role;

  const CrewInfo({
    required this.name,
    required this.staffId,
    required this.role,
  });

  factory CrewInfo.fromJson(Map<String, dynamic> json) {
    return CrewInfo(
      name: json['name'] ?? '',
      staffId: json['staff_id'] ?? '',
      role: json['role'] ?? '',
    );
  }

  factory CrewInfo.empty() {
    return const CrewInfo(name: '', staffId: '', role: '');
  }

  bool get isEmpty => name.isEmpty && staffId.isEmpty;
}
