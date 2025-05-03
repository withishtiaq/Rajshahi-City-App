import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtmRecord extends FirestoreRecord {
  AtmRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "addrs" field.
  String? _addrs;
  String get addrs => _addrs ?? '';
  bool hasAddrs() => _addrs != null;

  // "gmap" field.
  String? _gmap;
  String get gmap => _gmap ?? '';
  bool hasGmap() => _gmap != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  void _initializeFields() {
    _bankName = snapshotData['bankName'] as String?;
    _area = snapshotData['area'] as String?;
    _addrs = snapshotData['addrs'] as String?;
    _gmap = snapshotData['gmap'] as String?;
    _logo = snapshotData['logo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('atm');

  static Stream<AtmRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AtmRecord.fromSnapshot(s));

  static Future<AtmRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AtmRecord.fromSnapshot(s));

  static AtmRecord fromSnapshot(DocumentSnapshot snapshot) => AtmRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AtmRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AtmRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AtmRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AtmRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAtmRecordData({
  String? bankName,
  String? area,
  String? addrs,
  String? gmap,
  String? logo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bankName': bankName,
      'area': area,
      'addrs': addrs,
      'gmap': gmap,
      'logo': logo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AtmRecordDocumentEquality implements Equality<AtmRecord> {
  const AtmRecordDocumentEquality();

  @override
  bool equals(AtmRecord? e1, AtmRecord? e2) {
    return e1?.bankName == e2?.bankName &&
        e1?.area == e2?.area &&
        e1?.addrs == e2?.addrs &&
        e1?.gmap == e2?.gmap &&
        e1?.logo == e2?.logo;
  }

  @override
  int hash(AtmRecord? e) => const ListEquality()
      .hash([e?.bankName, e?.area, e?.addrs, e?.gmap, e?.logo]);

  @override
  bool isValidKey(Object? o) => o is AtmRecord;
}
