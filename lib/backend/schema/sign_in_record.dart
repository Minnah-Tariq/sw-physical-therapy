import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SignInRecord extends FirestoreRecord {
  SignInRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Paasword" field.
  String? _paasword;
  String get paasword => _paasword ?? '';
  bool hasPaasword() => _paasword != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _paasword = snapshotData['Paasword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SignIn');

  static Stream<SignInRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignInRecord.fromSnapshot(s));

  static Future<SignInRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignInRecord.fromSnapshot(s));

  static SignInRecord fromSnapshot(DocumentSnapshot snapshot) => SignInRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignInRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignInRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignInRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignInRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignInRecordData({
  String? email,
  String? paasword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'Paasword': paasword,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignInRecordDocumentEquality implements Equality<SignInRecord> {
  const SignInRecordDocumentEquality();

  @override
  bool equals(SignInRecord? e1, SignInRecord? e2) {
    return e1?.email == e2?.email && e1?.paasword == e2?.paasword;
  }

  @override
  int hash(SignInRecord? e) =>
      const ListEquality().hash([e?.email, e?.paasword]);

  @override
  bool isValidKey(Object? o) => o is SignInRecord;
}
