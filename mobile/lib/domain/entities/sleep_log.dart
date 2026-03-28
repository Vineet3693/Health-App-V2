import 'package:equatable/equatable.dart';

/// Sleep quality enum
enum SleepQuality {
  poor,
  fair,
  good,
  excellent,
}

/// Extension to get display name for sleep quality
extension SleepQualityExtension on SleepQuality {
  String get displayName {
    switch (this) {
      case SleepQuality.poor:
        return 'Poor';
      case SleepQuality.fair:
        return 'Fair';
      case SleepQuality.good:
        return 'Good';
      case SleepQuality.excellent:
        return 'Excellent';
    }
  }

  int get value {
    switch (this) {
      case SleepQuality.poor:
        return 1;
      case SleepQuality.fair:
        return 2;
      case SleepQuality.good:
        return 3;
      case SleepQuality.excellent:
        return 4;
    }
  }
}

/// Sleep log entity representing a sleep session
class SleepLog extends Equatable {
  final String id;
  final String userId;
  final DateTime bedtime;
  final DateTime wakeTime;
  final Duration totalSleep;
  final Duration? deepSleep;
  final Duration? lightSleep;
  final Duration? remSleep;
  final Duration? awakeTime;
  final SleepQuality quality;
  final int? qualityScore; // 0-100
  final String? notes;
  final DateTime createdAt;

  const SleepLog({
    required this.id,
    required this.userId,
    required this.bedtime,
    required this.wakeTime,
    required this.totalSleep,
    this.deepSleep,
    this.lightSleep,
    this.remSleep,
    this.awakeTime,
    required this.quality,
    this.qualityScore,
    this.notes,
    required this.createdAt,
  });

  /// Get sleep duration in hours
  double get sleepHours => totalSleep.inMinutes / 60.0;

  /// Check if sleep duration is recommended (7-9 hours)
  bool get isRecommendedDuration => sleepHours >= 7 && sleepHours <= 9;

  /// Get formatted bedtime
  String get formattedBedtime => _formatTime(bedtime);

  /// Get formatted wake time
  String get formattedWakeTime => _formatTime(wakeTime);

  /// Get formatted total sleep duration
  String get formattedTotalSleep => _formatDuration(totalSleep);

  String _formatTime(DateTime time) {
    final hour = time.hour;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    return '$displayHour:$minute $period';
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    return '${hours}h ${minutes}m';
  }

  SleepLog copyWith({
    String? id,
    String? userId,
    DateTime? bedtime,
    DateTime? wakeTime,
    Duration? totalSleep,
    Duration? deepSleep,
    Duration? lightSleep,
    Duration? remSleep,
    Duration? awakeTime,
    SleepQuality? quality,
    int? qualityScore,
    String? notes,
    DateTime? createdAt,
  }) {
    return SleepLog(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      bedtime: bedtime ?? this.bedtime,
      wakeTime: wakeTime ?? this.wakeTime,
      totalSleep: totalSleep ?? this.totalSleep,
      deepSleep: deepSleep ?? this.deepSleep,
      lightSleep: lightSleep ?? this.lightSleep,
      remSleep: remSleep ?? this.remSleep,
      awakeTime: awakeTime ?? this.awakeTime,
      quality: quality ?? this.quality,
      qualityScore: qualityScore ?? this.qualityScore,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        bedtime,
        wakeTime,
        totalSleep,
        deepSleep,
        lightSleep,
        remSleep,
        awakeTime,
        quality,
        qualityScore,
        notes,
        createdAt,
      ];
}
