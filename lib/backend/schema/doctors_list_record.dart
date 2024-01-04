import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorsListRecord extends FirestoreRecord {
  DoctorsListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DoctorName" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "DoctorRate" field.
  int? _doctorRate;
  int get doctorRate => _doctorRate ?? 0;
  bool hasDoctorRate() => _doctorRate != null;

  void _initializeFields() {
    _doctorName = snapshotData['DoctorName'] as String?;
    _doctorRate = castToType<int>(snapshotData['DoctorRate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DoctorsList');

  static Stream<DoctorsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorsListRecord.fromSnapshot(s));

  static Future<DoctorsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorsListRecord.fromSnapshot(s));

  static DoctorsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorsListRecordData({
  String? doctorName,
  int? doctorRate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DoctorName': doctorName,
      'DoctorRate': doctorRate,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorsListRecordDocumentEquality implements Equality<DoctorsListRecord> {
  const DoctorsListRecordDocumentEquality();

  @override
  bool equals(DoctorsListRecord? e1, DoctorsListRecord? e2) {
    return e1?.doctorName == e2?.doctorName && e1?.doctorRate == e2?.doctorRate;
  }

  @override
  int hash(DoctorsListRecord? e) =>
      const ListEquality().hash([e?.doctorName, e?.doctorRate]);

  @override
  bool isValidKey(Object? o) => o is DoctorsListRecord;
}
