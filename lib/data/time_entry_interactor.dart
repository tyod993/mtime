import 'package:mtime/data/entities/time_entry.dart';
import 'package:mtime/data/entities/time_entry_stat.dart';

class TimeEntryInteractor {
  final TimeEntryReader _timeEntryReader;
  final TimeEntryWriter _timeEntryWriter;

  TimeEntryInteractor(this._timeEntryReader, this._timeEntryWriter);

  Future<List<TimeEntry>> get getAllEntries => _timeEntryReader.getAllEntries();

  Future<bool> addTimeEntry(TimeEntryStat stat) =>
      _timeEntryWriter.addTimeEntry(stat);

  Future<bool> updateEntry(TimeEntryStat stat) =>
      _timeEntryWriter.updateTimeEntry(stat);

  Future<bool> deleteEntry(TimeEntryStat stat) =>
      _timeEntryWriter.deleteTimeEntry(stat);
}

class TimeEntryWriteException implements Exception {
  final String message;
  final StackTrace? trace;
  TimeEntryWriteException(this.message, this.trace);
}

abstract class TimeEntryReader {
  Future<List<TimeEntry>> getAllEntries();
}

abstract class TimeEntryWriter {
  Future<bool> addTimeEntry(TimeEntryStat stat);

  Future<bool> updateTimeEntry(TimeEntryStat stat);

  Future<bool> deleteTimeEntry(TimeEntryStat stat);
}
