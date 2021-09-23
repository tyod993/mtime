import 'package:flutter/material.dart';

@immutable
//The TimeStamp variable should be used to make sure the TimeEntry is the right object
class TimeEntry {
  final DateTime timeStamp = DateTime.now();
  final DateTime startTime;
  final DateTime? endTime;
  final Map<String, Object?> metadata;

  TimeEntry(this.startTime, this.endTime, this.metadata);
}
