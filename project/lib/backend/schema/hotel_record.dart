import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelRecord extends FirestoreRecord {
  HotelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sl" field.
  int? _sl;
  int get sl => _sl ?? 0;
  bool hasSl() => _sl != null;

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

  void _initializeFields() {
    _sl = castToType<int>(snapshotData['sl']);
    _hotelName = snapshotData['hotelName'] as String?;
    _hotelArea = snapshotData['hotelArea'] as String?;
    _hotelAddrs = snapshotData['hotelAddrs'] as String?;
    _hotelNumber = snapshotData['hotelNumber'] as String?;
    _hotelMap = snapshotData['hotelMap'] as String?;
    _hotelPic = snapshotData['hotelPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hotel');

  static Stream<HotelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelRecord.fromSnapshot(s));

  static Future<HotelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelRecord.fromSnapshot(s));

  static HotelRecord fromSnapshot(DocumentSnapshot snapshot) => HotelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelRecordData({
  int? sl,
  String? hotelName,
  String? hotelArea,
  String? hotelAddrs,
  String? hotelNumber,
  String? hotelMap,
  String? hotelPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sl': sl,
      'hotelName': hotelName,
      'hotelArea': hotelArea,
      'hotelAddrs': hotelAddrs,
      'hotelNumber': hotelNumber,
      'hotelMap': hotelMap,
      'hotelPic': hotelPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelRecordDocumentEquality implements Equality<HotelRecord> {
  const HotelRecordDocumentEquality();

  @override
  bool equals(HotelRecord? e1, HotelRecord? e2) {
    return e1?.sl == e2?.sl &&
        e1?.hotelName == e2?.hotelName &&
        e1?.hotelArea == e2?.hotelArea &&
        e1?.hotelAddrs == e2?.hotelAddrs &&
        e1?.hotelNumber == e2?.hotelNumber &&
        e1?.hotelMap == e2?.hotelMap &&
        e1?.hotelPic == e2?.hotelPic;
  }

  @override
  int hash(HotelRecord? e) => const ListEquality().hash([
        e?.sl,
        e?.hotelName,
        e?.hotelArea,
        e?.hotelAddrs,
        e?.hotelNumber,
        e?.hotelMap,
        e?.hotelPic
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelRecord;
}
