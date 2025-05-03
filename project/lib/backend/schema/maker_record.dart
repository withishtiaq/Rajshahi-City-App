import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MakerRecord extends FirestoreRecord {
  MakerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "numb" field.
  String? _numb;
  String get numb => _numb ?? '';
  bool hasNumb() => _numb != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _service = snapshotData['service'] as String?;
    _area = snapshotData['area'] as String?;
    _numb = snapshotData['numb'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maker');

  static Stream<MakerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MakerRecord.fromSnapshot(s));

  static Future<MakerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MakerRecord.fromSnapshot(s));

  static MakerRecord fromSnapshot(DocumentSnapshot snapshot) => MakerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MakerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MakerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MakerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MakerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMakerRecordData({
  String? name,
  String? type,
  String? service,
  String? area,
  String? numb,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'service': service,
      'area': area,
      'numb': numb,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class MakerRecordDocumentEquality implements Equality<MakerRecord> {
  const MakerRecordDocumentEquality();

  @override
  bool equals(MakerRecord? e1, MakerRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.service == e2?.service &&
        e1?.area == e2?.area &&
        e1?.numb == e2?.numb &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(MakerRecord? e) => const ListEquality()
      .hash([e?.name, e?.type, e?.service, e?.area, e?.numb, e?.pic]);

  @override
  bool isValidKey(Object? o) => o is MakerRecord;
}
