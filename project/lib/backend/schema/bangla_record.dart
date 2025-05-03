import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BanglaRecord extends FirestoreRecord {
  BanglaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "banglaCentrName" field.
  String? _banglaCentrName;
  String get banglaCentrName => _banglaCentrName ?? '';
  bool hasBanglaCentrName() => _banglaCentrName != null;

  // "sirName" field.
  String? _sirName;
  String get sirName => _sirName ?? '';
  bool hasSirName() => _sirName != null;

  // "sirEducationQua" field.
  String? _sirEducationQua;
  String get sirEducationQua => _sirEducationQua ?? '';
  bool hasSirEducationQua() => _sirEducationQua != null;

  // "bngpart" field.
  String? _bngpart;
  String get bngpart => _bngpart ?? '';
  bool hasBngpart() => _bngpart != null;

  // "bngclass" field.
  String? _bngclass;
  String get bngclass => _bngclass ?? '';
  bool hasBngclass() => _bngclass != null;

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

  void _initializeFields() {
    _banglaCentrName = snapshotData['banglaCentrName'] as String?;
    _sirName = snapshotData['sirName'] as String?;
    _sirEducationQua = snapshotData['sirEducationQua'] as String?;
    _bngpart = snapshotData['bngpart'] as String?;
    _bngclass = snapshotData['bngclass'] as String?;
    _address = snapshotData['address'] as String?;
    _gMap = snapshotData['gMap'] as String?;
    _phn = snapshotData['phn'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bangla');

  static Stream<BanglaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BanglaRecord.fromSnapshot(s));

  static Future<BanglaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BanglaRecord.fromSnapshot(s));

  static BanglaRecord fromSnapshot(DocumentSnapshot snapshot) => BanglaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BanglaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BanglaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BanglaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BanglaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBanglaRecordData({
  String? banglaCentrName,
  String? sirName,
  String? sirEducationQua,
  String? bngpart,
  String? bngclass,
  String? address,
  String? gMap,
  String? phn,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'banglaCentrName': banglaCentrName,
      'sirName': sirName,
      'sirEducationQua': sirEducationQua,
      'bngpart': bngpart,
      'bngclass': bngclass,
      'address': address,
      'gMap': gMap,
      'phn': phn,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class BanglaRecordDocumentEquality implements Equality<BanglaRecord> {
  const BanglaRecordDocumentEquality();

  @override
  bool equals(BanglaRecord? e1, BanglaRecord? e2) {
    return e1?.banglaCentrName == e2?.banglaCentrName &&
        e1?.sirName == e2?.sirName &&
        e1?.sirEducationQua == e2?.sirEducationQua &&
        e1?.bngpart == e2?.bngpart &&
        e1?.bngclass == e2?.bngclass &&
        e1?.address == e2?.address &&
        e1?.gMap == e2?.gMap &&
        e1?.phn == e2?.phn &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(BanglaRecord? e) => const ListEquality().hash([
        e?.banglaCentrName,
        e?.sirName,
        e?.sirEducationQua,
        e?.bngpart,
        e?.bngclass,
        e?.address,
        e?.gMap,
        e?.phn,
        e?.pic
      ]);

  @override
  bool isValidKey(Object? o) => o is BanglaRecord;
}
