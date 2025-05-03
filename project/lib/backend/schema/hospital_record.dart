import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalRecord extends FirestoreRecord {
  HospitalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "map_url" field.
  String? _mapUrl;
  String get mapUrl => _mapUrl ?? '';
  bool hasMapUrl() => _mapUrl != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _address = snapshotData['address'] as String?;
    _pic = snapshotData['pic'] as String?;
    _mapUrl = snapshotData['map_url'] as String?;
    _area = snapshotData['area'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospital');

  static Stream<HospitalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalRecord.fromSnapshot(s));

  static Future<HospitalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalRecord.fromSnapshot(s));

  static HospitalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalRecordData({
  String? name,
  String? phoneNumber,
  String? address,
  String? pic,
  String? mapUrl,
  String? area,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone_number': phoneNumber,
      'address': address,
      'pic': pic,
      'map_url': mapUrl,
      'area': area,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalRecordDocumentEquality implements Equality<HospitalRecord> {
  const HospitalRecordDocumentEquality();

  @override
  bool equals(HospitalRecord? e1, HospitalRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.address == e2?.address &&
        e1?.pic == e2?.pic &&
        e1?.mapUrl == e2?.mapUrl &&
        e1?.area == e2?.area;
  }

  @override
  int hash(HospitalRecord? e) => const ListEquality()
      .hash([e?.name, e?.phoneNumber, e?.address, e?.pic, e?.mapUrl, e?.area]);

  @override
  bool isValidKey(Object? o) => o is HospitalRecord;
}
