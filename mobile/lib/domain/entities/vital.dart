import 'package:equatable/equatable.dart';

/// Vital sign types enum
enum VitalType {
  heartRate,
  bloodPressure,
  temperature,
  oxygenSaturation,
  glucose,
  respiratoryRate,
}

/// Extension to get display name for vital types
extension VitalTypeExtension on VitalType {
  String get displayName {
    switch (this) {
      case VitalType.heartRate:
        return 'Heart Rate';
      case VitalType.bloodPressure:
        return 'Blood Pressure';
      case VitalType.temperature:
        return 'Temperature';
      case VitalType.oxygenSaturation:
        return 'Oxygen Saturation';
      case VitalType.glucose:
        return 'Glucose';
      case VitalType.respiratoryRate:
        return 'Respiratory Rate';
    }
  }

  String get unit {
    switch (this) {
      case VitalType.heartRate:
        return 'bpm';
      case VitalType.bloodPressure:
        return 'mmHg';
      case VitalType.temperature:
        return '°F';
      case VitalType.oxygenSaturation:
        return '%';
      case VitalType.glucose:
        return 'mg/dL';
      case VitalType.respiratoryRate:
        return 'breaths/min';
    }
  }
}

/// Vital entity representing a health vital sign reading
class Vital extends Equatable {
  final String id;
  final String userId;
  final VitalType type;
  final double value;
  final double? secondaryValue; // For blood pressure (systolic/diastolic)
  final String unit;
  final DateTime recordedAt;
  final String? notes;
  final DateTime createdAt;

  const Vital({
    required this.id,
    required this.userId,
    required this.type,
    required this.value,
    this.secondaryValue,
    required this.unit,
    required this.recordedAt,
    this.notes,
    required this.createdAt,
  });

  /// Get formatted value string
  String get formattedValue {
    if (type == VitalType.bloodPressure && secondaryValue != null) {
      return '${value.toInt()}/${secondaryValue!.toInt()} $unit';
    }
    return '${value.toStringAsFixed(1)} $unit';
  }

  /// Check if vital is in normal range (simplified)
  bool get isNormal {
    switch (type) {
      case VitalType.heartRate:
        return value >= 60 && value <= 100;
      case VitalType.bloodPressure:
        return value < 120 && (secondaryValue ?? 0) < 80;
      case VitalType.temperature:
        return value >= 97.0 && value <= 99.0;
      case VitalType.oxygenSaturation:
        return value >= 95;
      case VitalType.glucose:
        return value >= 70 && value <= 140;
      case VitalType.respiratoryRate:
        return value >= 12 && value <= 20;
    }
  }

  Vital copyWith({
    String? id,
    String? userId,
    VitalType? type,
    double? value,
    double? secondaryValue,
    String? unit,
    DateTime? recordedAt,
    String? notes,
    DateTime? createdAt,
  }) {
    return Vital(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      value: value ?? this.value,
      secondaryValue: secondaryValue ?? this.secondaryValue,
      unit: unit ?? this.unit,
      recordedAt: recordedAt ?? this.recordedAt,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        type,
        value,
        secondaryValue,
        unit,
        recordedAt,
        notes,
        createdAt,
      ];
}
