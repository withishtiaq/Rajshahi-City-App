import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiolgyRecord extends FirestoreRecord {
  BiolgyRecord._(
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

  // "gMap" field.
  String? _gMap;
  String get gMap => _gMap ?? '';
  bool hasGMap() => _gMap != null;

  // "phn" field.
  String? _phn;
  String get phn => _phn ?? '';
  bool hasPhn() => _phn != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "centerName" field.
  String? _centerName;
  String get centerName => _centerName ?? '';
  bool hasCenterName() => _centerName != null;

  // "part" field.
  String? _part;
  String get part => _part ?? '';
  bool hasPart() => _part != null;

  // "jeclass" field.
  String? _jeclass;
  String get jeclass => _jeclass ?? '';
  bool hasJeclass() => _jeclass != null;

  void _initializeFields() {
    _sirName = snapshotData['sirName'] as String?;
    _sirEducationQua = snapshotData['sirEducationQua'] as String?;
    _address = snapshotData['address'] as String?;
    _gMap = snapshotData['gMap'] as String?;
    _phn = snapshotData['phn'] as String?;
    _pic = snapshotData['pic'] as String?;
    _centerName = snapshotData['centerName'] as String?;
    _part = snapshotData['part'] as String?;
    _jeclass = snapshotData['jeclass'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('biolgy');

  static Stream<BiolgyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BiolgyRecord.fromSnapshot(s));

  static Future<BiolgyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BiolgyRecord.fromSnapshot(s));

  static BiolgyRecord fromSnapshot(DocumentSnapshot snapshot) => BiolgyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BiolgyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BiolgyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BiolgyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BiolgyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBiolgyRecordData({
  String? sirName,
  String? sirEducationQua,
  String? address,
  String? gMap,
  String? phn,
  String? pic,
  String? centerName,
  String? part,
  String? jeclass,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sirName': sirName,
      'sirEducationQua': sirEducationQua,
      'address': address,
      'gMap': gMap,
      'phn': phn,
      'pic': pic,
      'centerName': centerName,
      'part': part,
      'jeclass': jeclass,
    }.withoutNulls,
  );

  return firestoreData;
}

class BiolgyRecordDocumentEquality implements Equality<BiolgyRecord> {
  const BiolgyRecordDocumentEquality();

  @override
  bool equals(BiolgyRecord? e1, BiolgyRecord? e2) {
    return e1?.sirName == e2?.sirName &&
        e1?.sirEducationQua == e2?.sirEducationQua &&
        e1?.address == e2?.address &&
        e1?.gMap == e2?.gMap &&
        e1?.phn == e2?.phn &&
        e1?.pic == e2?.pic &&
        e1?.centerName == e2?.centerName &&
        e1?.part == e2?.part &&
        e1?.jeclass == e2?.jeclass;
  }

  @override
  int hash(BiolgyRecord? e) => const ListEquality().hash([
        e?.sirName,
        e?.sirEducationQua,
        e?.address,
        e?.gMap,
        e?.phn,
        e?.pic,
        e?.centerName,
        e?.part,
        e?.jeclass
      ]);

  @override
  bool isValidKey(Object? o) => o is BiolgyRecord;
}
