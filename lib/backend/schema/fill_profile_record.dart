import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FillProfileRecord extends FirestoreRecord {
  FillProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Gender" field.
  List<String>? _gender;
  List<String> get gender => _gender ?? const [];
  bool hasGender() => _gender != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "NationalID" field.
  int? _nationalID;
  int get nationalID => _nationalID ?? 0;
  bool hasNationalID() => _nationalID != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = getDataList(snapshotData['Gender']);
    _address = snapshotData['Address'] as String?;
    _nationalID = castToType<int>(snapshotData['NationalID']);
    _age = castToType<int>(snapshotData['Age']);
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FillProfile');

  static Stream<FillProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FillProfileRecord.fromSnapshot(s));

  static Future<FillProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FillProfileRecord.fromSnapshot(s));

  static FillProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FillProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FillProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FillProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FillProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FillProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFillProfileRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? address,
  int? nationalID,
  int? age,
  String? uid,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'Address': address,
      'NationalID': nationalID,
      'Age': age,
      'uid': uid,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class FillProfileRecordDocumentEquality implements Equality<FillProfileRecord> {
  const FillProfileRecordDocumentEquality();

  @override
  bool equals(FillProfileRecord? e1, FillProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        listEquality.equals(e1?.gender, e2?.gender) &&
        e1?.address == e2?.address &&
        e1?.nationalID == e2?.nationalID &&
        e1?.age == e2?.age &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(FillProfileRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.gender,
        e?.address,
        e?.nationalID,
        e?.age,
        e?.uid,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is FillProfileRecord;
}
