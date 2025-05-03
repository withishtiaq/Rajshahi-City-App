import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstituteRecord extends FirestoreRecord {
  InstituteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "establis" field.
  String? _establis;
  String get establis => _establis ?? '';
  bool hasEstablis() => _establis != null;

  // "policstat" field.
  String? _policstat;
  String get policstat => _policstat ?? '';
  bool hasPolicstat() => _policstat != null;

  // "addrs" field.
  String? _addrs;
  String get addrs => _addrs ?? '';
  bool hasAddrs() => _addrs != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "gmap" field.
  String? _gmap;
  String get gmap => _gmap ?? '';
  bool hasGmap() => _gmap != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _establis = snapshotData['establis'] as String?;
    _policstat = snapshotData['policstat'] as String?;
    _addrs = snapshotData['addrs'] as String?;
    _phone = snapshotData['phone'] as String?;
    _gmap = snapshotData['gmap'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('institute');

  static Stream<InstituteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstituteRecord.fromSnapshot(s));

  static Future<InstituteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstituteRecord.fromSnapshot(s));

  static InstituteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstituteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstituteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstituteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstituteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstituteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstituteRecordData({
  String? name,
  String? establis,
  String? policstat,
  String? addrs,
  String? phone,
  String? gmap,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'establis': establis,
      'policstat': policstat,
      'addrs': addrs,
      'phone': phone,
      'gmap': gmap,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstituteRecordDocumentEquality implements Equality<InstituteRecord> {
  const InstituteRecordDocumentEquality();

  @override
  bool equals(InstituteRecord? e1, InstituteRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.establis == e2?.establis &&
        e1?.policstat == e2?.policstat &&
        e1?.addrs == e2?.addrs &&
        e1?.phone == e2?.phone &&
        e1?.gmap == e2?.gmap &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(InstituteRecord? e) => const ListEquality().hash([
        e?.name,
        e?.establis,
        e?.policstat,
        e?.addrs,
        e?.phone,
        e?.gmap,
        e?.pic
      ]);

  @override
  bool isValidKey(Object? o) => o is InstituteRecord;
}
