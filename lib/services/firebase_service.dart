import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/health_record.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addHealthRecord(String userId, HealthRecord record) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('healthRecords')
        .add(record.toMap());
  }

  Future<List<HealthRecord>> getHealthRecords(String userId) async {
    final snapshot = await _db
        .collection('users')
        .doc(userId)
        .collection('healthRecords')
        .orderBy('date', descending: true)
        .get();

    return snapshot.docs
        .map((doc) => HealthRecord.fromMap(doc.data(), doc.id))
        .toList();
  }

  Future<void> deleteHealthRecord(String userId, String recordId) async {
    await _db
        .collection('users')
        .doc(userId)
        .collection('healthRecords')
        .doc(recordId)
        .delete();
  }

  Future<void> updateReminder(String userId, Map<String, dynamic> reminderData) async {
    await _db.collection('users').doc(userId).update({'reminder': reminderData});
  }

  Future<Map<String, dynamic>?> getReminder(String userId) async {
    final doc = await _db.collection('users').doc(userId).get();
    return doc.data()?['reminder'];
  }
}
    