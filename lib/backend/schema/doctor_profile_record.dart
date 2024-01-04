import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorProfileRecord extends FirestoreRecord {
  DoctorProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DoctorImage" field.
  String? _doctorImage;
  String get doctorImage => _doctorImage ?? '';
  bool hasDoctorImage() => _doctorImage != null;

  // "DoctorName" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "TotalPatients" field.
  int? _totalPatients;
  int get totalPatients => _totalPatients ?? 0;
  bool hasTotalPatients() => _totalPatients != null;

  // "YearsExper" field.
  int? _yearsExper;
  int get yearsExper => _yearsExper ?? 0;
  bool hasYearsExper() => _yearsExper != null;

  // "DoctorRate" field.
  int? _doctorRate;
  int get doctorRate => _doctorRate ?? 0;
  bool hasDoctorRate() => _doctorRate != null;

  void _initializeFields() {
    _doctorImage = snapshotData['DoctorImage'] as String?;
    _doctorName = snapshotData['DoctorName'] as String?;
    _totalPatients = castToType<int>(snapshotData['TotalPatients']);
    _yearsExper = castToType<int>(snapshotData['YearsExper']);
    _doctorRate = castToType<int>(snapshotData['DoctorRate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DoctorProfile');

  static Stream<DoctorProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorProfileRecord.fromSnapshot(s));

  static Future<DoctorProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorProfileRecord.fromSnapshot(s));

  static DoctorProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorProfileRecordData({
  String? doctorImage,
  String? doctorName,
  int? totalPatients,
  int? yearsExper,
  int? doctorRate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DoctorImage': doctorImage,
      'DoctorName': doctorName,
      'TotalPatients': totalPatients,
      'YearsExper': yearsExper,
      'DoctorRate': doctorRate,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorProfileRecordDocumentEquality
    implements Equality<DoctorProfileRecord> {
  const DoctorProfileRecordDocumentEquality();

  @override
  bool equals(DoctorProfileRecord? e1, DoctorProfileRecord? e2) {
    return e1?.doctorImage == e2?.doctorImage &&
        e1?.doctorName == e2?.doctorName &&
        e1?.totalPatients == e2?.totalPatients &&
        e1?.yearsExper == e2?.yearsExper &&
        e1?.doctorRate == e2?.doctorRate;
  }

  @override
  int hash(DoctorProfileRecord? e) => const ListEquality().hash([
        e?.doctorImage,
        e?.doctorName,
        e?.totalPatients,
        e?.yearsExper,
        e?.doctorRate
      ]);

  @override
  bool isValidKey(Object? o) => o is DoctorProfileRecord;
}
