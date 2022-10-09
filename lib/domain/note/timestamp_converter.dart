import 'package:cloud_firestore/cloud_firestore.dart';

DateTime? dateTimeFromTimeStamp(dynamic data) {
  Timestamp? timestamp;

  if (data is Timestamp) {
    timestamp = data;
  } else if (data is Map) {
    timestamp = Timestamp(data['_seconds'], data['_nanoseconds']);
  }
  return timestamp?.toDate();
}

Map<String, dynamic>? dateTimeToTimeStamp(DateTime? dateTime) {
  final timestamp = Timestamp.fromDate(dateTime ?? DateTime.now());
  return {
    '_seconds': timestamp.seconds,
    '_nanoseconds': timestamp.nanoseconds,
  };
}