import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturentRecord extends FirestoreRecord {
  ResturentRecord._(
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

  // "addrs" field.
  String? _addrs;
  String get addrs => _addrs ?? '';
  bool hasAddrs() => _addrs != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "map" field.
  String? _map;
  String get map => _map ?? '';
  bool hasMap() => _map != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _area = snapshotData['area'] as String?;
    _addrs = snapshotData['addrs'] as String?;
    _number = snapshotData['number'] as String?;
    _map = snapshotData['map'] as String?;
    _time = snapshotData['time'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resturent');

  static Stream<ResturentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResturentRecord.fromSnapshot(s));

  static Future<ResturentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResturentRecord.fromSnapshot(s));

  static ResturentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturentRecordData({
  String? name,
  String? area,
  String? addrs,
  String? number,
  String? map,
  String? time,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'area': area,
      'addrs': addrs,
      'number': number,
      'map': map,
      'time': time,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResturentRecordDocumentEquality implements Equality<ResturentRecord> {
  const ResturentRecordDocumentEquality();

  @override
  bool equals(ResturentRecord? e1, ResturentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.area == e2?.area &&
        e1?.addrs == e2?.addrs &&
        e1?.number == e2?.number &&
        e1?.map == e2?.map &&
        e1?.time == e2?.time &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(ResturentRecord? e) => const ListEquality()
      .hash([e?.name, e?.area, e?.addrs, e?.number, e?.map, e?.time, e?.pic]);

  @override
  bool isValidKey(Object? o) => o is ResturentRecord;
}
