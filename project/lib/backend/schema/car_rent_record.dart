import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarRentRecord extends FirestoreRecord {
  CarRentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "carDriver" field.
  String? _carDriver;
  String get carDriver => _carDriver ?? '';
  bool hasCarDriver() => _carDriver != null;

  // "driverPhone" field.
  String? _driverPhone;
  String get driverPhone => _driverPhone ?? '';
  bool hasDriverPhone() => _driverPhone != null;

  // "driverAddrs" field.
  String? _driverAddrs;
  String get driverAddrs => _driverAddrs ?? '';
  bool hasDriverAddrs() => _driverAddrs != null;

  // "carType" field.
  String? _carType;
  String get carType => _carType ?? '';
  bool hasCarType() => _carType != null;

  // "carSeat" field.
  String? _carSeat;
  String get carSeat => _carSeat ?? '';
  bool hasCarSeat() => _carSeat != null;

  // "carNumberPlat" field.
  String? _carNumberPlat;
  String get carNumberPlat => _carNumberPlat ?? '';
  bool hasCarNumberPlat() => _carNumberPlat != null;

  // "carPic" field.
  String? _carPic;
  String get carPic => _carPic ?? '';
  bool hasCarPic() => _carPic != null;

  void _initializeFields() {
    _carDriver = snapshotData['carDriver'] as String?;
    _driverPhone = snapshotData['driverPhone'] as String?;
    _driverAddrs = snapshotData['driverAddrs'] as String?;
    _carType = snapshotData['carType'] as String?;
    _carSeat = snapshotData['carSeat'] as String?;
    _carNumberPlat = snapshotData['carNumberPlat'] as String?;
    _carPic = snapshotData['carPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car_rent');

  static Stream<CarRentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarRentRecord.fromSnapshot(s));

  static Future<CarRentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarRentRecord.fromSnapshot(s));

  static CarRentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarRentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarRentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarRentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarRentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarRentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarRentRecordData({
  String? carDriver,
  String? driverPhone,
  String? driverAddrs,
  String? carType,
  String? carSeat,
  String? carNumberPlat,
  String? carPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'carDriver': carDriver,
      'driverPhone': driverPhone,
      'driverAddrs': driverAddrs,
      'carType': carType,
      'carSeat': carSeat,
      'carNumberPlat': carNumberPlat,
      'carPic': carPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarRentRecordDocumentEquality implements Equality<CarRentRecord> {
  const CarRentRecordDocumentEquality();

  @override
  bool equals(CarRentRecord? e1, CarRentRecord? e2) {
    return e1?.carDriver == e2?.carDriver &&
        e1?.driverPhone == e2?.driverPhone &&
        e1?.driverAddrs == e2?.driverAddrs &&
        e1?.carType == e2?.carType &&
        e1?.carSeat == e2?.carSeat &&
        e1?.carNumberPlat == e2?.carNumberPlat &&
        e1?.carPic == e2?.carPic;
  }

  @override
  int hash(CarRentRecord? e) => const ListEquality().hash([
        e?.carDriver,
        e?.driverPhone,
        e?.driverAddrs,
        e?.carType,
        e?.carSeat,
        e?.carNumberPlat,
        e?.carPic
      ]);

  @override
  bool isValidKey(Object? o) => o is CarRentRecord;
}
