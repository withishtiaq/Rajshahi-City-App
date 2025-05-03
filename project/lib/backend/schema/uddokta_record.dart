import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UddoktaRecord extends FirestoreRecord {
  UddoktaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "pgnme" field.
  String? _pgnme;
  String get pgnme => _pgnme ?? '';
  bool hasPgnme() => _pgnme != null;

  // "pgeLink" field.
  String? _pgeLink;
  String get pgeLink => _pgeLink ?? '';
  bool hasPgeLink() => _pgeLink != null;

  // "phn" field.
  String? _phn;
  String get phn => _phn ?? '';
  bool hasPhn() => _phn != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _area = snapshotData['area'] as String?;
    _service = snapshotData['service'] as String?;
    _pgnme = snapshotData['pgnme'] as String?;
    _pgeLink = snapshotData['pgeLink'] as String?;
    _phn = snapshotData['phn'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('uddokta');

  static Stream<UddoktaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UddoktaRecord.fromSnapshot(s));

  static Future<UddoktaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UddoktaRecord.fromSnapshot(s));

  static UddoktaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UddoktaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UddoktaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UddoktaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UddoktaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UddoktaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUddoktaRecordData({
  String? name,
  String? area,
  String? service,
  String? pgnme,
  String? pgeLink,
  String? phn,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'area': area,
      'service': service,
      'pgnme': pgnme,
      'pgeLink': pgeLink,
      'phn': phn,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class UddoktaRecordDocumentEquality implements Equality<UddoktaRecord> {
  const UddoktaRecordDocumentEquality();

  @override
  bool equals(UddoktaRecord? e1, UddoktaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.area == e2?.area &&
        e1?.service == e2?.service &&
        e1?.pgnme == e2?.pgnme &&
        e1?.pgeLink == e2?.pgeLink &&
        e1?.phn == e2?.phn &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(UddoktaRecord? e) => const ListEquality().hash(
      [e?.name, e?.area, e?.service, e?.pgnme, e?.pgeLink, e?.phn, e?.pic]);

  @override
  bool isValidKey(Object? o) => o is UddoktaRecord;
}
