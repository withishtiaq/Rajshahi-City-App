import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParlarRecord extends FirestoreRecord {
  ParlarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hotelName" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "hotelArea" field.
  String? _hotelArea;
  String get hotelArea => _hotelArea ?? '';
  bool hasHotelArea() => _hotelArea != null;

  // "hotelAddrs" field.
  String? _hotelAddrs;
  String get hotelAddrs => _hotelAddrs ?? '';
  bool hasHotelAddrs() => _hotelAddrs != null;

  // "hotelNumber" field.
  String? _hotelNumber;
  String get hotelNumber => _hotelNumber ?? '';
  bool hasHotelNumber() => _hotelNumber != null;

  // "hotelMap" field.
  String? _hotelMap;
  String get hotelMap => _hotelMap ?? '';
  bool hasHotelMap() => _hotelMap != null;

  // "hotelPic" field.
  String? _hotelPic;
  String get hotelPic => _hotelPic ?? '';
  bool hasHotelPic() => _hotelPic != null;

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "jader" field.
  String? _jader;
  String get jader => _jader ?? '';
  bool hasJader() => _jader != null;

  void _initializeFields() {
    _hotelName = snapshotData['hotelName'] as String?;
    _hotelArea = snapshotData['hotelArea'] as String?;
    _hotelAddrs = snapshotData['hotelAddrs'] as String?;
    _hotelNumber = snapshotData['hotelNumber'] as String?;
    _hotelMap = snapshotData['hotelMap'] as String?;
    _hotelPic = snapshotData['hotelPic'] as String?;
    _service = snapshotData['service'] as String?;
    _jader = snapshotData['jader'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parlar');

  static Stream<ParlarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParlarRecord.fromSnapshot(s));

  static Future<ParlarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParlarRecord.fromSnapshot(s));

  static ParlarRecord fromSnapshot(DocumentSnapshot snapshot) => ParlarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParlarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParlarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParlarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParlarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParlarRecordData({
  String? hotelName,
  String? hotelArea,
  String? hotelAddrs,
  String? hotelNumber,
  String? hotelMap,
  String? hotelPic,
  String? service,
  String? jader,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hotelName': hotelName,
      'hotelArea': hotelArea,
      'hotelAddrs': hotelAddrs,
      'hotelNumber': hotelNumber,
      'hotelMap': hotelMap,
      'hotelPic': hotelPic,
      'service': service,
      'jader': jader,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParlarRecordDocumentEquality implements Equality<ParlarRecord> {
  const ParlarRecordDocumentEquality();

  @override
  bool equals(ParlarRecord? e1, ParlarRecord? e2) {
    return e1?.hotelName == e2?.hotelName &&
        e1?.hotelArea == e2?.hotelArea &&
        e1?.hotelAddrs == e2?.hotelAddrs &&
        e1?.hotelNumber == e2?.hotelNumber &&
        e1?.hotelMap == e2?.hotelMap &&
        e1?.hotelPic == e2?.hotelPic &&
        e1?.service == e2?.service &&
        e1?.jader == e2?.jader;
  }

  @override
  int hash(ParlarRecord? e) => const ListEquality().hash([
        e?.hotelName,
        e?.hotelArea,
        e?.hotelAddrs,
        e?.hotelNumber,
        e?.hotelMap,
        e?.hotelPic,
        e?.service,
        e?.jader
      ]);

  @override
  bool isValidKey(Object? o) => o is ParlarRecord;
}
