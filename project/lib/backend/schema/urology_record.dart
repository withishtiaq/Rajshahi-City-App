import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UrologyRecord extends FirestoreRecord {
  UrologyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "urologyDoctor" field.
  String? _urologyDoctor;
  String get urologyDoctor => _urologyDoctor ?? '';
  bool hasUrologyDoctor() => _urologyDoctor != null;

  // "urologyDoctorExprt" field.
  String? _urologyDoctorExprt;
  String get urologyDoctorExprt => _urologyDoctorExprt ?? '';
  bool hasUrologyDoctorExprt() => _urologyDoctorExprt != null;

  // "urologyDoctorEduca" field.
  String? _urologyDoctorEduca;
  String get urologyDoctorEduca => _urologyDoctorEduca ?? '';
  bool hasUrologyDoctorEduca() => _urologyDoctorEduca != null;

  // "urologyDoctorWorkLoca" field.
  String? _urologyDoctorWorkLoca;
  String get urologyDoctorWorkLoca => _urologyDoctorWorkLoca ?? '';
  bool hasUrologyDoctorWorkLoca() => _urologyDoctorWorkLoca != null;

  // "urologyDoctorTrtmnt" field.
  String? _urologyDoctorTrtmnt;
  String get urologyDoctorTrtmnt => _urologyDoctorTrtmnt ?? '';
  bool hasUrologyDoctorTrtmnt() => _urologyDoctorTrtmnt != null;

  // "urologyCh1NameAdd" field.
  String? _urologyCh1NameAdd;
  String get urologyCh1NameAdd => _urologyCh1NameAdd ?? '';
  bool hasUrologyCh1NameAdd() => _urologyCh1NameAdd != null;

  // "urologyCh1Day" field.
  String? _urologyCh1Day;
  String get urologyCh1Day => _urologyCh1Day ?? '';
  bool hasUrologyCh1Day() => _urologyCh1Day != null;

  // "urologyCh1Time" field.
  String? _urologyCh1Time;
  String get urologyCh1Time => _urologyCh1Time ?? '';
  bool hasUrologyCh1Time() => _urologyCh1Time != null;

  // "urologyCh1Phone" field.
  String? _urologyCh1Phone;
  String get urologyCh1Phone => _urologyCh1Phone ?? '';
  bool hasUrologyCh1Phone() => _urologyCh1Phone != null;

  // "urologyCh2NameAdd" field.
  String? _urologyCh2NameAdd;
  String get urologyCh2NameAdd => _urologyCh2NameAdd ?? '';
  bool hasUrologyCh2NameAdd() => _urologyCh2NameAdd != null;

  // "urologyCh2Day" field.
  String? _urologyCh2Day;
  String get urologyCh2Day => _urologyCh2Day ?? '';
  bool hasUrologyCh2Day() => _urologyCh2Day != null;

  // "urologyCh2Time" field.
  String? _urologyCh2Time;
  String get urologyCh2Time => _urologyCh2Time ?? '';
  bool hasUrologyCh2Time() => _urologyCh2Time != null;

  // "urologyCh2Phone" field.
  String? _urologyCh2Phone;
  String get urologyCh2Phone => _urologyCh2Phone ?? '';
  bool hasUrologyCh2Phone() => _urologyCh2Phone != null;

  // "urologyDoctorPic" field.
  String? _urologyDoctorPic;
  String get urologyDoctorPic => _urologyDoctorPic ?? '';
  bool hasUrologyDoctorPic() => _urologyDoctorPic != null;

  void _initializeFields() {
    _urologyDoctor = snapshotData['urologyDoctor'] as String?;
    _urologyDoctorExprt = snapshotData['urologyDoctorExprt'] as String?;
    _urologyDoctorEduca = snapshotData['urologyDoctorEduca'] as String?;
    _urologyDoctorWorkLoca = snapshotData['urologyDoctorWorkLoca'] as String?;
    _urologyDoctorTrtmnt = snapshotData['urologyDoctorTrtmnt'] as String?;
    _urologyCh1NameAdd = snapshotData['urologyCh1NameAdd'] as String?;
    _urologyCh1Day = snapshotData['urologyCh1Day'] as String?;
    _urologyCh1Time = snapshotData['urologyCh1Time'] as String?;
    _urologyCh1Phone = snapshotData['urologyCh1Phone'] as String?;
    _urologyCh2NameAdd = snapshotData['urologyCh2NameAdd'] as String?;
    _urologyCh2Day = snapshotData['urologyCh2Day'] as String?;
    _urologyCh2Time = snapshotData['urologyCh2Time'] as String?;
    _urologyCh2Phone = snapshotData['urologyCh2Phone'] as String?;
    _urologyDoctorPic = snapshotData['urologyDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('urology');

  static Stream<UrologyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UrologyRecord.fromSnapshot(s));

  static Future<UrologyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UrologyRecord.fromSnapshot(s));

  static UrologyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UrologyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UrologyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UrologyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UrologyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UrologyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUrologyRecordData({
  String? urologyDoctor,
  String? urologyDoctorExprt,
  String? urologyDoctorEduca,
  String? urologyDoctorWorkLoca,
  String? urologyDoctorTrtmnt,
  String? urologyCh1NameAdd,
  String? urologyCh1Day,
  String? urologyCh1Time,
  String? urologyCh1Phone,
  String? urologyCh2NameAdd,
  String? urologyCh2Day,
  String? urologyCh2Time,
  String? urologyCh2Phone,
  String? urologyDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'urologyDoctor': urologyDoctor,
      'urologyDoctorExprt': urologyDoctorExprt,
      'urologyDoctorEduca': urologyDoctorEduca,
      'urologyDoctorWorkLoca': urologyDoctorWorkLoca,
      'urologyDoctorTrtmnt': urologyDoctorTrtmnt,
      'urologyCh1NameAdd': urologyCh1NameAdd,
      'urologyCh1Day': urologyCh1Day,
      'urologyCh1Time': urologyCh1Time,
      'urologyCh1Phone': urologyCh1Phone,
      'urologyCh2NameAdd': urologyCh2NameAdd,
      'urologyCh2Day': urologyCh2Day,
      'urologyCh2Time': urologyCh2Time,
      'urologyCh2Phone': urologyCh2Phone,
      'urologyDoctorPic': urologyDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class UrologyRecordDocumentEquality implements Equality<UrologyRecord> {
  const UrologyRecordDocumentEquality();

  @override
  bool equals(UrologyRecord? e1, UrologyRecord? e2) {
    return e1?.urologyDoctor == e2?.urologyDoctor &&
        e1?.urologyDoctorExprt == e2?.urologyDoctorExprt &&
        e1?.urologyDoctorEduca == e2?.urologyDoctorEduca &&
        e1?.urologyDoctorWorkLoca == e2?.urologyDoctorWorkLoca &&
        e1?.urologyDoctorTrtmnt == e2?.urologyDoctorTrtmnt &&
        e1?.urologyCh1NameAdd == e2?.urologyCh1NameAdd &&
        e1?.urologyCh1Day == e2?.urologyCh1Day &&
        e1?.urologyCh1Time == e2?.urologyCh1Time &&
        e1?.urologyCh1Phone == e2?.urologyCh1Phone &&
        e1?.urologyCh2NameAdd == e2?.urologyCh2NameAdd &&
        e1?.urologyCh2Day == e2?.urologyCh2Day &&
        e1?.urologyCh2Time == e2?.urologyCh2Time &&
        e1?.urologyCh2Phone == e2?.urologyCh2Phone &&
        e1?.urologyDoctorPic == e2?.urologyDoctorPic;
  }

  @override
  int hash(UrologyRecord? e) => const ListEquality().hash([
        e?.urologyDoctor,
        e?.urologyDoctorExprt,
        e?.urologyDoctorEduca,
        e?.urologyDoctorWorkLoca,
        e?.urologyDoctorTrtmnt,
        e?.urologyCh1NameAdd,
        e?.urologyCh1Day,
        e?.urologyCh1Time,
        e?.urologyCh1Phone,
        e?.urologyCh2NameAdd,
        e?.urologyCh2Day,
        e?.urologyCh2Time,
        e?.urologyCh2Phone,
        e?.urologyDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is UrologyRecord;
}
