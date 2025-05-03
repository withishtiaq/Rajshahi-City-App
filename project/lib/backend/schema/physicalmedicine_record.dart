import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhysicalmedicineRecord extends FirestoreRecord {
  PhysicalmedicineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "physicalDoctor" field.
  String? _physicalDoctor;
  String get physicalDoctor => _physicalDoctor ?? '';
  bool hasPhysicalDoctor() => _physicalDoctor != null;

  // "physicalDoctorExprt" field.
  String? _physicalDoctorExprt;
  String get physicalDoctorExprt => _physicalDoctorExprt ?? '';
  bool hasPhysicalDoctorExprt() => _physicalDoctorExprt != null;

  // "physicalDoctorEduca" field.
  String? _physicalDoctorEduca;
  String get physicalDoctorEduca => _physicalDoctorEduca ?? '';
  bool hasPhysicalDoctorEduca() => _physicalDoctorEduca != null;

  // "physicalDoctorWorkLoca" field.
  String? _physicalDoctorWorkLoca;
  String get physicalDoctorWorkLoca => _physicalDoctorWorkLoca ?? '';
  bool hasPhysicalDoctorWorkLoca() => _physicalDoctorWorkLoca != null;

  // "physicalDoctorTrtmnt" field.
  String? _physicalDoctorTrtmnt;
  String get physicalDoctorTrtmnt => _physicalDoctorTrtmnt ?? '';
  bool hasPhysicalDoctorTrtmnt() => _physicalDoctorTrtmnt != null;

  // "physicalCh1NameAdd" field.
  String? _physicalCh1NameAdd;
  String get physicalCh1NameAdd => _physicalCh1NameAdd ?? '';
  bool hasPhysicalCh1NameAdd() => _physicalCh1NameAdd != null;

  // "physicalCh1Day" field.
  String? _physicalCh1Day;
  String get physicalCh1Day => _physicalCh1Day ?? '';
  bool hasPhysicalCh1Day() => _physicalCh1Day != null;

  // "physicalCh1Time" field.
  String? _physicalCh1Time;
  String get physicalCh1Time => _physicalCh1Time ?? '';
  bool hasPhysicalCh1Time() => _physicalCh1Time != null;

  // "physicalCh1Phone" field.
  String? _physicalCh1Phone;
  String get physicalCh1Phone => _physicalCh1Phone ?? '';
  bool hasPhysicalCh1Phone() => _physicalCh1Phone != null;

  // "physicalCh2NameAdd" field.
  String? _physicalCh2NameAdd;
  String get physicalCh2NameAdd => _physicalCh2NameAdd ?? '';
  bool hasPhysicalCh2NameAdd() => _physicalCh2NameAdd != null;

  // "physicalCh2Day" field.
  String? _physicalCh2Day;
  String get physicalCh2Day => _physicalCh2Day ?? '';
  bool hasPhysicalCh2Day() => _physicalCh2Day != null;

  // "physicalCh2Time" field.
  String? _physicalCh2Time;
  String get physicalCh2Time => _physicalCh2Time ?? '';
  bool hasPhysicalCh2Time() => _physicalCh2Time != null;

  // "physicalCh2Phone" field.
  String? _physicalCh2Phone;
  String get physicalCh2Phone => _physicalCh2Phone ?? '';
  bool hasPhysicalCh2Phone() => _physicalCh2Phone != null;

  // "physicalDoctorPic" field.
  String? _physicalDoctorPic;
  String get physicalDoctorPic => _physicalDoctorPic ?? '';
  bool hasPhysicalDoctorPic() => _physicalDoctorPic != null;

  void _initializeFields() {
    _physicalDoctor = snapshotData['physicalDoctor'] as String?;
    _physicalDoctorExprt = snapshotData['physicalDoctorExprt'] as String?;
    _physicalDoctorEduca = snapshotData['physicalDoctorEduca'] as String?;
    _physicalDoctorWorkLoca = snapshotData['physicalDoctorWorkLoca'] as String?;
    _physicalDoctorTrtmnt = snapshotData['physicalDoctorTrtmnt'] as String?;
    _physicalCh1NameAdd = snapshotData['physicalCh1NameAdd'] as String?;
    _physicalCh1Day = snapshotData['physicalCh1Day'] as String?;
    _physicalCh1Time = snapshotData['physicalCh1Time'] as String?;
    _physicalCh1Phone = snapshotData['physicalCh1Phone'] as String?;
    _physicalCh2NameAdd = snapshotData['physicalCh2NameAdd'] as String?;
    _physicalCh2Day = snapshotData['physicalCh2Day'] as String?;
    _physicalCh2Time = snapshotData['physicalCh2Time'] as String?;
    _physicalCh2Phone = snapshotData['physicalCh2Phone'] as String?;
    _physicalDoctorPic = snapshotData['physicalDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('physicalmedicine');

  static Stream<PhysicalmedicineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhysicalmedicineRecord.fromSnapshot(s));

  static Future<PhysicalmedicineRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PhysicalmedicineRecord.fromSnapshot(s));

  static PhysicalmedicineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PhysicalmedicineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhysicalmedicineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhysicalmedicineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhysicalmedicineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhysicalmedicineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhysicalmedicineRecordData({
  String? physicalDoctor,
  String? physicalDoctorExprt,
  String? physicalDoctorEduca,
  String? physicalDoctorWorkLoca,
  String? physicalDoctorTrtmnt,
  String? physicalCh1NameAdd,
  String? physicalCh1Day,
  String? physicalCh1Time,
  String? physicalCh1Phone,
  String? physicalCh2NameAdd,
  String? physicalCh2Day,
  String? physicalCh2Time,
  String? physicalCh2Phone,
  String? physicalDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'physicalDoctor': physicalDoctor,
      'physicalDoctorExprt': physicalDoctorExprt,
      'physicalDoctorEduca': physicalDoctorEduca,
      'physicalDoctorWorkLoca': physicalDoctorWorkLoca,
      'physicalDoctorTrtmnt': physicalDoctorTrtmnt,
      'physicalCh1NameAdd': physicalCh1NameAdd,
      'physicalCh1Day': physicalCh1Day,
      'physicalCh1Time': physicalCh1Time,
      'physicalCh1Phone': physicalCh1Phone,
      'physicalCh2NameAdd': physicalCh2NameAdd,
      'physicalCh2Day': physicalCh2Day,
      'physicalCh2Time': physicalCh2Time,
      'physicalCh2Phone': physicalCh2Phone,
      'physicalDoctorPic': physicalDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhysicalmedicineRecordDocumentEquality
    implements Equality<PhysicalmedicineRecord> {
  const PhysicalmedicineRecordDocumentEquality();

  @override
  bool equals(PhysicalmedicineRecord? e1, PhysicalmedicineRecord? e2) {
    return e1?.physicalDoctor == e2?.physicalDoctor &&
        e1?.physicalDoctorExprt == e2?.physicalDoctorExprt &&
        e1?.physicalDoctorEduca == e2?.physicalDoctorEduca &&
        e1?.physicalDoctorWorkLoca == e2?.physicalDoctorWorkLoca &&
        e1?.physicalDoctorTrtmnt == e2?.physicalDoctorTrtmnt &&
        e1?.physicalCh1NameAdd == e2?.physicalCh1NameAdd &&
        e1?.physicalCh1Day == e2?.physicalCh1Day &&
        e1?.physicalCh1Time == e2?.physicalCh1Time &&
        e1?.physicalCh1Phone == e2?.physicalCh1Phone &&
        e1?.physicalCh2NameAdd == e2?.physicalCh2NameAdd &&
        e1?.physicalCh2Day == e2?.physicalCh2Day &&
        e1?.physicalCh2Time == e2?.physicalCh2Time &&
        e1?.physicalCh2Phone == e2?.physicalCh2Phone &&
        e1?.physicalDoctorPic == e2?.physicalDoctorPic;
  }

  @override
  int hash(PhysicalmedicineRecord? e) => const ListEquality().hash([
        e?.physicalDoctor,
        e?.physicalDoctorExprt,
        e?.physicalDoctorEduca,
        e?.physicalDoctorWorkLoca,
        e?.physicalDoctorTrtmnt,
        e?.physicalCh1NameAdd,
        e?.physicalCh1Day,
        e?.physicalCh1Time,
        e?.physicalCh1Phone,
        e?.physicalCh2NameAdd,
        e?.physicalCh2Day,
        e?.physicalCh2Time,
        e?.physicalCh2Phone,
        e?.physicalDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PhysicalmedicineRecord;
}
