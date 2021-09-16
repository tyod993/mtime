import 'package:flutter/material.dart';

@immutable
class TimeEntry {
  final DateTime startTime;
  final DateTime? endTime;
  final Map<String, Object?> metadata;

  const TimeEntry(this.startTime, this.endTime, this.metadata);
}
