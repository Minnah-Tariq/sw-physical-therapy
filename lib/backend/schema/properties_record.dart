import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Pateintname" field.
  String? _pateintname;
  String get pateintname => _pateintname ?? '';
  bool hasPateintname() => _pateintname != null;

  // "pateintAge" field.
  int? _pateintAge;
  int get pateintAge => _pateintAge ?? 0;
  bool hasPateintAge() => _pateintAge != null;

  // "NationalID" field.
  int? _nationalID;
  int get nationalID => _nationalID ?? 0;
  bool hasNationalID() => _nationalID != null;

  // "DateofAppointment" field.
  DateTime? _dateofAppointment;
  DateTime? get dateofAppointment => _dateofAppointment;
  bool hasDateofAppointment() => _dateofAppointment != null;

  void _initializeFields() {
    _pateintname = snapshotData['Pateintname'] as String?;
    _pateintAge = castToType<int>(snapshotData['pateintAge']);
    _nationalID = castToType<int>(snapshotData['NationalID']);
    _dateofAppointment = snapshotData['DateofAppointment'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? pateintname,
  int? pateintAge,
  int? nationalID,
  DateTime? dateofAppointment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Pateintname': pateintname,
      'pateintAge': pateintAge,
      'NationalID': nationalID,
      'DateofAppointment': dateofAppointment,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.pateintname == e2?.pateintname &&
        e1?.pateintAge == e2?.pateintAge &&
        e1?.nationalID == e2?.nationalID &&
        e1?.dateofAppointment == e2?.dateofAppointment;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash(
      [e?.pateintname, e?.pateintAge, e?.nationalID, e?.dateofAppointment]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
