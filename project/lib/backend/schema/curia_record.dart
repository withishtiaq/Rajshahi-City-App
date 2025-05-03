import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuriaRecord extends FirestoreRecord {
  CuriaRecord._(
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

  void _initializeFields() {
    _hotelName = snapshotData['hotelName'] as String?;
    _hotelArea = snapshotData['hotelArea'] as String?;
    _hotelAddrs = snapshotData['hotelAddrs'] as String?;
    _hotelNumber = snapshotData['hotelNumber'] as String?;
    _hotelMap = snapshotData['hotelMap'] as String?;
    _hotelPic = snapshotData['hotelPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('curia');

  static Stream<CuriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuriaRecord.fromSnapshot(s));

  static Future<CuriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuriaRecord.fromSnapshot(s));

  static CuriaRecord fromSnapshot(DocumentSnapshot snapshot) => CuriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuriaRecordData({
  String? hotelName,
  String? hotelArea,
  String? hotelAddrs,
  String? hotelNumber,
  String? hotelMap,
  String? hotelPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
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

class CuriaRecordDocumentEquality implements Equality<CuriaRecord> {
  const CuriaRecordDocumentEquality();

  @override
  bool equals(CuriaRecord? e1, CuriaRecord? e2) {
    return e1?.hotelName == e2?.hotelName &&
        e1?.hotelArea == e2?.hotelArea &&
        e1?.hotelAddrs == e2?.hotelAddrs &&
        e1?.hotelNumber == e2?.hotelNumber &&
        e1?.hotelMap == e2?.hotelMap &&
        e1?.hotelPic == e2?.hotelPic;
  }

  @override
  int hash(CuriaRecord? e) => const ListEquality().hash([
        e?.hotelName,
        e?.hotelArea,
        e?.hotelAddrs,
        e?.hotelNumber,
        e?.hotelMap,
        e?.hotelPic
      ]);

  @override
  bool isValidKey(Object? o) => o is CuriaRecord;
}
