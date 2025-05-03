import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeTutorRecord extends FirestoreRecord {
  HomeTutorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sirName" field.
  String? _sirName;
  String get sirName => _sirName ?? '';
  bool hasSirName() => _sirName != null;

  // "sirEducationQua" field.
  String? _sirEducationQua;
  String get sirEducationQua => _sirEducationQua ?? '';
  bool hasSirEducationQua() => _sirEducationQua != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "phn" field.
  String? _phn;
  String get phn => _phn ?? '';
  bool hasPhn() => _phn != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "jeclass" field.
  String? _jeclass;
  String get jeclass => _jeclass ?? '';
  bool hasJeclass() => _jeclass != null;

  // "jebisoy" field.
  String? _jebisoy;
  String get jebisoy => _jebisoy ?? '';
  bool hasJebisoy() => _jebisoy != null;

  void _initializeFields() {
    _sirName = snapshotData['sirName'] as String?;
    _sirEducationQua = snapshotData['sirEducationQua'] as String?;
    _address = snapshotData['address'] as String?;
    _phn = snapshotData['phn'] as String?;
    _pic = snapshotData['pic'] as String?;
    _jeclass = snapshotData['jeclass'] as String?;
    _jebisoy = snapshotData['jebisoy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('homeTutor');

  static Stream<HomeTutorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HomeTutorRecord.fromSnapshot(s));

  static Future<HomeTutorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HomeTutorRecord.fromSnapshot(s));

  static HomeTutorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HomeTutorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HomeTutorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HomeTutorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HomeTutorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HomeTutorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHomeTutorRecordData({
  String? sirName,
  String? sirEducationQua,
  String? address,
  String? phn,
  String? pic,
  String? jeclass,
  String? jebisoy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sirName': sirName,
      'sirEducationQua': sirEducationQua,
      'address': address,
      'phn': phn,
      'pic': pic,
      'jeclass': jeclass,
      'jebisoy': jebisoy,
    }.withoutNulls,
  );

  return firestoreData;
}

class HomeTutorRecordDocumentEquality implements Equality<HomeTutorRecord> {
  const HomeTutorRecordDocumentEquality();

  @override
  bool equals(HomeTutorRecord? e1, HomeTutorRecord? e2) {
    return e1?.sirName == e2?.sirName &&
        e1?.sirEducationQua == e2?.sirEducationQua &&
        e1?.address == e2?.address &&
        e1?.phn == e2?.phn &&
        e1?.pic == e2?.pic &&
        e1?.jeclass == e2?.jeclass &&
        e1?.jebisoy == e2?.jebisoy;
  }

  @override
  int hash(HomeTutorRecord? e) => const ListEquality().hash([
        e?.sirName,
        e?.sirEducationQua,
        e?.address,
        e?.phn,
        e?.pic,
        e?.jeclass,
        e?.jebisoy
      ]);

  @override
  bool isValidKey(Object? o) => o is HomeTutorRecord;
}
