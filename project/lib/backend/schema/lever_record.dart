import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeverRecord extends FirestoreRecord {
  LeverRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "leverDoctor" field.
  String? _leverDoctor;
  String get leverDoctor => _leverDoctor ?? '';
  bool hasLeverDoctor() => _leverDoctor != null;

  // "leverDoctorExprt" field.
  String? _leverDoctorExprt;
  String get leverDoctorExprt => _leverDoctorExprt ?? '';
  bool hasLeverDoctorExprt() => _leverDoctorExprt != null;

  // "leverDoctorEduca" field.
  String? _leverDoctorEduca;
  String get leverDoctorEduca => _leverDoctorEduca ?? '';
  bool hasLeverDoctorEduca() => _leverDoctorEduca != null;

  // "leverDoctorWorkLoca" field.
  String? _leverDoctorWorkLoca;
  String get leverDoctorWorkLoca => _leverDoctorWorkLoca ?? '';
  bool hasLeverDoctorWorkLoca() => _leverDoctorWorkLoca != null;

  // "leverDoctorTrtment" field.
  String? _leverDoctorTrtment;
  String get leverDoctorTrtment => _leverDoctorTrtment ?? '';
  bool hasLeverDoctorTrtment() => _leverDoctorTrtment != null;

  // "leverCh1NameAdd" field.
  String? _leverCh1NameAdd;
  String get leverCh1NameAdd => _leverCh1NameAdd ?? '';
  bool hasLeverCh1NameAdd() => _leverCh1NameAdd != null;

  // "leverCh1Day" field.
  String? _leverCh1Day;
  String get leverCh1Day => _leverCh1Day ?? '';
  bool hasLeverCh1Day() => _leverCh1Day != null;

  // "leverCh1Time" field.
  String? _leverCh1Time;
  String get leverCh1Time => _leverCh1Time ?? '';
  bool hasLeverCh1Time() => _leverCh1Time != null;

  // "leverCh1Phone" field.
  String? _leverCh1Phone;
  String get leverCh1Phone => _leverCh1Phone ?? '';
  bool hasLeverCh1Phone() => _leverCh1Phone != null;

  // "leverCh2NameAdd" field.
  String? _leverCh2NameAdd;
  String get leverCh2NameAdd => _leverCh2NameAdd ?? '';
  bool hasLeverCh2NameAdd() => _leverCh2NameAdd != null;

  // "leverCh2Day" field.
  String? _leverCh2Day;
  String get leverCh2Day => _leverCh2Day ?? '';
  bool hasLeverCh2Day() => _leverCh2Day != null;

  // "leverCh2Time" field.
  String? _leverCh2Time;
  String get leverCh2Time => _leverCh2Time ?? '';
  bool hasLeverCh2Time() => _leverCh2Time != null;

  // "leverCh2Phone" field.
  String? _leverCh2Phone;
  String get leverCh2Phone => _leverCh2Phone ?? '';
  bool hasLeverCh2Phone() => _leverCh2Phone != null;

  // "leverDoctorPic" field.
  String? _leverDoctorPic;
  String get leverDoctorPic => _leverDoctorPic ?? '';
  bool hasLeverDoctorPic() => _leverDoctorPic != null;

  void _initializeFields() {
    _leverDoctor = snapshotData['leverDoctor'] as String?;
    _leverDoctorExprt = snapshotData['leverDoctorExprt'] as String?;
    _leverDoctorEduca = snapshotData['leverDoctorEduca'] as String?;
    _leverDoctorWorkLoca = snapshotData['leverDoctorWorkLoca'] as String?;
    _leverDoctorTrtment = snapshotData['leverDoctorTrtment'] as String?;
    _leverCh1NameAdd = snapshotData['leverCh1NameAdd'] as String?;
    _leverCh1Day = snapshotData['leverCh1Day'] as String?;
    _leverCh1Time = snapshotData['leverCh1Time'] as String?;
    _leverCh1Phone = snapshotData['leverCh1Phone'] as String?;
    _leverCh2NameAdd = snapshotData['leverCh2NameAdd'] as String?;
    _leverCh2Day = snapshotData['leverCh2Day'] as String?;
    _leverCh2Time = snapshotData['leverCh2Time'] as String?;
    _leverCh2Phone = snapshotData['leverCh2Phone'] as String?;
    _leverDoctorPic = snapshotData['leverDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lever');

  static Stream<LeverRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeverRecord.fromSnapshot(s));

  static Future<LeverRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeverRecord.fromSnapshot(s));

  static LeverRecord fromSnapshot(DocumentSnapshot snapshot) => LeverRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeverRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeverRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeverRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeverRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeverRecordData({
  String? leverDoctor,
  String? leverDoctorExprt,
  String? leverDoctorEduca,
  String? leverDoctorWorkLoca,
  String? leverDoctorTrtment,
  String? leverCh1NameAdd,
  String? leverCh1Day,
  String? leverCh1Time,
  String? leverCh1Phone,
  String? leverCh2NameAdd,
  String? leverCh2Day,
  String? leverCh2Time,
  String? leverCh2Phone,
  String? leverDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'leverDoctor': leverDoctor,
      'leverDoctorExprt': leverDoctorExprt,
      'leverDoctorEduca': leverDoctorEduca,
      'leverDoctorWorkLoca': leverDoctorWorkLoca,
      'leverDoctorTrtment': leverDoctorTrtment,
      'leverCh1NameAdd': leverCh1NameAdd,
      'leverCh1Day': leverCh1Day,
      'leverCh1Time': leverCh1Time,
      'leverCh1Phone': leverCh1Phone,
      'leverCh2NameAdd': leverCh2NameAdd,
      'leverCh2Day': leverCh2Day,
      'leverCh2Time': leverCh2Time,
      'leverCh2Phone': leverCh2Phone,
      'leverDoctorPic': leverDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeverRecordDocumentEquality implements Equality<LeverRecord> {
  const LeverRecordDocumentEquality();

  @override
  bool equals(LeverRecord? e1, LeverRecord? e2) {
    return e1?.leverDoctor == e2?.leverDoctor &&
        e1?.leverDoctorExprt == e2?.leverDoctorExprt &&
        e1?.leverDoctorEduca == e2?.leverDoctorEduca &&
        e1?.leverDoctorWorkLoca == e2?.leverDoctorWorkLoca &&
        e1?.leverDoctorTrtment == e2?.leverDoctorTrtment &&
        e1?.leverCh1NameAdd == e2?.leverCh1NameAdd &&
        e1?.leverCh1Day == e2?.leverCh1Day &&
        e1?.leverCh1Time == e2?.leverCh1Time &&
        e1?.leverCh1Phone == e2?.leverCh1Phone &&
        e1?.leverCh2NameAdd == e2?.leverCh2NameAdd &&
        e1?.leverCh2Day == e2?.leverCh2Day &&
        e1?.leverCh2Time == e2?.leverCh2Time &&
        e1?.leverCh2Phone == e2?.leverCh2Phone &&
        e1?.leverDoctorPic == e2?.leverDoctorPic;
  }

  @override
  int hash(LeverRecord? e) => const ListEquality().hash([
        e?.leverDoctor,
        e?.leverDoctorExprt,
        e?.leverDoctorEduca,
        e?.leverDoctorWorkLoca,
        e?.leverDoctorTrtment,
        e?.leverCh1NameAdd,
        e?.leverCh1Day,
        e?.leverCh1Time,
        e?.leverCh1Phone,
        e?.leverCh2NameAdd,
        e?.leverCh2Day,
        e?.leverCh2Time,
        e?.leverCh2Phone,
        e?.leverDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is LeverRecord;
}
