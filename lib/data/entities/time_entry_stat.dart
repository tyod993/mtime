import 'package:flutter/material.dart';

@immutable
class TimeEntryStat {
  final DateTime timeStamp;
  final DateTime? startTime;
  final DateTime? endTime;
  final Map<String, Object?>? metadata;

  const TimeEntryStat(this.timeStamp,
      {this.startTime, this.endTime, this.metadata});
}
