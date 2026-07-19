import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final DateTime createdAt;
  final int streak;
  final int xp;
  final int level;
  final int completedTasks;

  UserModel({
    required this.uid,
    required this.email,
    required this.createdAt,
    this.streak = 0,
    this.xp = 0,
    this.level = 1,
    this.completedTasks = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'createdAt': Timestamp.fromDate(createdAt),
      'streak': streak,
      'xp': xp,
      'level': level,
      'completedTasks': completedTasks,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      createdAt: (map['createdAt'] as Timestamp).toDate(),
      streak: map['streak'] ?? 0,
      xp: map['xp'] ?? 0,
      level: map['level'] ?? 1,
      completedTasks: map['completedTasks'] ?? 0,
    );
  }
}
