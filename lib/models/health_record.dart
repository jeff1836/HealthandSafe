class HealthRecord {
  final String id;
  final DateTime date;
  final int systolic;
  final int diastolic;
  final int heartRate;
  final double bloodSugar;
  final String? symptoms;

  HealthRecord({
    required this.id,
    required this.date,
    required this.systolic,
    required this.diastolic,
    required this.heartRate,
    required this.bloodSugar,
    this.symptoms,
  });

  factory HealthRecord.fromMap(Map<String, dynamic> map, String docId) {
    return HealthRecord(
      id: docId,
      date: (map['date'] as Timestamp).toDate(),
      systolic: map['systolic'] ?? 0,
      diastolic: map['diastolic'] ?? 0,
      heartRate: map['heartRate'] ?? 0,
      bloodSugar: (map['bloodSugar'] as num).toDouble(),
      symptoms: map['symptoms'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'systolic': systolic,
      'diastolic': diastolic,
      'heartRate': heartRate,
      'bloodSugar': bloodSugar,
      'symptoms': symptoms,
    };
  }
}
