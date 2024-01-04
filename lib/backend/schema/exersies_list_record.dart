import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExersiesListRecord extends FirestoreRecord {
  ExersiesListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ExersieName" field.
  String? _exersieName;
  String get exersieName => _exersieName ?? '';
  bool hasExersieName() => _exersieName != null;

  // "MinutesTaken" field.
  int? _minutesTaken;
  int get minutesTaken => _minutesTaken ?? 0;
  bool hasMinutesTaken() => _minutesTaken != null;

  void _initializeFields() {
    _exersieName = snapshotData['ExersieName'] as String?;
    _minutesTaken = castToType<int>(snapshotData['MinutesTaken']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ExersiesList');

  static Stream<ExersiesListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExersiesListRecord.fromSnapshot(s));

  static Future<ExersiesListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExersiesListRecord.fromSnapshot(s));

  static ExersiesListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExersiesListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExersiesListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExersiesListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExersiesListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExersiesListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExersiesListRecordData({
  String? exersieName,
  int? minutesTaken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ExersieName': exersieName,
      'MinutesTaken': minutesTaken,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExersiesListRecordDocumentEquality
    implements Equality<ExersiesListRecord> {
  const ExersiesListRecordDocumentEquality();

  @override
  bool equals(ExersiesListRecord? e1, ExersiesListRecord? e2) {
    return e1?.exersieName == e2?.exersieName &&
        e1?.minutesTaken == e2?.minutesTaken;
  }

  @override
  int hash(ExersiesListRecord? e) =>
      const ListEquality().hash([e?.exersieName, e?.minutesTaken]);

  @override
  bool isValidKey(Object? o) => o is ExersiesListRecord;
}
