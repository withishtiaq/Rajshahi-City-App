import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BasaVraRecord extends FirestoreRecord {
  BasaVraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "basa" field.
  String? _basa;
  String get basa => _basa ?? '';
  bool hasBasa() => _basa != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "vara" field.
  String? _vara;
  String get vara => _vara ?? '';
  bool hasVara() => _vara != null;

  // "volume" field.
  String? _volume;
  String get volume => _volume ?? '';
  bool hasVolume() => _volume != null;

  // "roomno" field.
  String? _roomno;
  String get roomno => _roomno ?? '';
  bool hasRoomno() => _roomno != null;

  // "washroomno" field.
  String? _washroomno;
  String get washroomno => _washroomno ?? '';
  bool hasWashroomno() => _washroomno != null;

  // "benefit" field.
  String? _benefit;
  String get benefit => _benefit ?? '';
  bool hasBenefit() => _benefit != null;

  // "addrs" field.
  String? _addrs;
  String get addrs => _addrs ?? '';
  bool hasAddrs() => _addrs != null;

  // "detailks" field.
  String? _detailks;
  String get detailks => _detailks ?? '';
  bool hasDetailks() => _detailks != null;

  // "phn" field.
  String? _phn;
  String get phn => _phn ?? '';
  bool hasPhn() => _phn != null;

  // "gmap" field.
  String? _gmap;
  String get gmap => _gmap ?? '';
  bool hasGmap() => _gmap != null;

  // "uploader" field.
  String? _uploader;
  String get uploader => _uploader ?? '';
  bool hasUploader() => _uploader != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _basa = snapshotData['basa'] as String?;
    _area = snapshotData['area'] as String?;
    _vara = snapshotData['vara'] as String?;
    _volume = snapshotData['volume'] as String?;
    _roomno = snapshotData['roomno'] as String?;
    _washroomno = snapshotData['washroomno'] as String?;
    _benefit = snapshotData['benefit'] as String?;
    _addrs = snapshotData['addrs'] as String?;
    _detailks = snapshotData['detailks'] as String?;
    _phn = snapshotData['phn'] as String?;
    _gmap = snapshotData['gmap'] as String?;
    _uploader = snapshotData['uploader'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('basaVra');

  static Stream<BasaVraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BasaVraRecord.fromSnapshot(s));

  static Future<BasaVraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BasaVraRecord.fromSnapshot(s));

  static BasaVraRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BasaVraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BasaVraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BasaVraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BasaVraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BasaVraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBasaVraRecordData({
  String? basa,
  String? area,
  String? vara,
  String? volume,
  String? roomno,
  String? washroomno,
  String? benefit,
  String? addrs,
  String? detailks,
  String? phn,
  String? gmap,
  String? uploader,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'basa': basa,
      'area': area,
      'vara': vara,
      'volume': volume,
      'roomno': roomno,
      'washroomno': washroomno,
      'benefit': benefit,
      'addrs': addrs,
      'detailks': detailks,
      'phn': phn,
      'gmap': gmap,
      'uploader': uploader,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class BasaVraRecordDocumentEquality implements Equality<BasaVraRecord> {
  const BasaVraRecordDocumentEquality();

  @override
  bool equals(BasaVraRecord? e1, BasaVraRecord? e2) {
    return e1?.basa == e2?.basa &&
        e1?.area == e2?.area &&
        e1?.vara == e2?.vara &&
        e1?.volume == e2?.volume &&
        e1?.roomno == e2?.roomno &&
        e1?.washroomno == e2?.washroomno &&
        e1?.benefit == e2?.benefit &&
        e1?.addrs == e2?.addrs &&
        e1?.detailks == e2?.detailks &&
        e1?.phn == e2?.phn &&
        e1?.gmap == e2?.gmap &&
        e1?.uploader == e2?.uploader &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(BasaVraRecord? e) => const ListEquality().hash([
        e?.basa,
        e?.area,
        e?.vara,
        e?.volume,
        e?.roomno,
        e?.washroomno,
        e?.benefit,
        e?.addrs,
        e?.detailks,
        e?.phn,
        e?.gmap,
        e?.uploader,
        e?.pic
      ]);

  @override
  bool isValidKey(Object? o) => o is BasaVraRecord;
}
