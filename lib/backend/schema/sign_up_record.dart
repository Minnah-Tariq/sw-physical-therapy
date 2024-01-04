import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SignUpRecord extends FirestoreRecord {
  SignUpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "ConfirmPassword" field.
  String? _confirmPassword;
  String get confirmPassword => _confirmPassword ?? '';
  bool hasConfirmPassword() => _confirmPassword != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _password = snapshotData['Password'] as String?;
    _confirmPassword = snapshotData['ConfirmPassword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SignUp');

  static Stream<SignUpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignUpRecord.fromSnapshot(s));

  static Future<SignUpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignUpRecord.fromSnapshot(s));

  static SignUpRecord fromSnapshot(DocumentSnapshot snapshot) => SignUpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignUpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignUpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignUpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignUpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignUpRecordData({
  String? email,
  String? password,
  String? confirmPassword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'Password': password,
      'ConfirmPassword': confirmPassword,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignUpRecordDocumentEquality implements Equality<SignUpRecord> {
  const SignUpRecordDocumentEquality();

  @override
  bool equals(SignUpRecord? e1, SignUpRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.confirmPassword == e2?.confirmPassword;
  }

  @override
  int hash(SignUpRecord? e) =>
      const ListEquality().hash([e?.email, e?.password, e?.confirmPassword]);

  @override
  bool isValidKey(Object? o) => o is SignUpRecord;
}
