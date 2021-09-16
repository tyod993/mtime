import 'package:mtime/data/entities/time_entry.dart';

class TimeEntryInteractor {
  final TimeEntryReader _timeEntryReader;
  final TimeEntryWriter _timeEntryWriter;

  TimeEntryInteractor(this._timeEntryReader, this._timeEntryWriter);

  Future<List<TimeEntry>> get getAllEntries => _timeEntryReader.getAllEntries();
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
  Future<bool> addTimeEntry(TimeEntry timeEntry);

  Future<bool> editTimeEntry(TimeEntry timeEntry);

  Future<bool> deleteTimeEntry(TimeEntry timeEntry);
}
