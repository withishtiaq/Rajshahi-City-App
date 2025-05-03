import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PailsRecord extends FirestoreRecord {
  PailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pailsDoctor" field.
  String? _pailsDoctor;
  String get pailsDoctor => _pailsDoctor ?? '';
  bool hasPailsDoctor() => _pailsDoctor != null;

  // "pailsDoctorExprt" field.
  String? _pailsDoctorExprt;
  String get pailsDoctorExprt => _pailsDoctorExprt ?? '';
  bool hasPailsDoctorExprt() => _pailsDoctorExprt != null;

  // "pailsDoctorEduca" field.
  String? _pailsDoctorEduca;
  String get pailsDoctorEduca => _pailsDoctorEduca ?? '';
  bool hasPailsDoctorEduca() => _pailsDoctorEduca != null;

  // "pailsDoctorWorkLoca" field.
  String? _pailsDoctorWorkLoca;
  String get pailsDoctorWorkLoca => _pailsDoctorWorkLoca ?? '';
  bool hasPailsDoctorWorkLoca() => _pailsDoctorWorkLoca != null;

  // "pailsDoctorTrtment" field.
  String? _pailsDoctorTrtment;
  String get pailsDoctorTrtment => _pailsDoctorTrtment ?? '';
  bool hasPailsDoctorTrtment() => _pailsDoctorTrtment != null;

  // "pailsCh1NameAdd" field.
  String? _pailsCh1NameAdd;
  String get pailsCh1NameAdd => _pailsCh1NameAdd ?? '';
  bool hasPailsCh1NameAdd() => _pailsCh1NameAdd != null;

  // "pailsCh1Day" field.
  String? _pailsCh1Day;
  String get pailsCh1Day => _pailsCh1Day ?? '';
  bool hasPailsCh1Day() => _pailsCh1Day != null;

  // "pailsCh1Time" field.
  String? _pailsCh1Time;
  String get pailsCh1Time => _pailsCh1Time ?? '';
  bool hasPailsCh1Time() => _pailsCh1Time != null;

  // "pailsCh1Phone" field.
  String? _pailsCh1Phone;
  String get pailsCh1Phone => _pailsCh1Phone ?? '';
  bool hasPailsCh1Phone() => _pailsCh1Phone != null;

  // "pailsCh2NameAdd" field.
  String? _pailsCh2NameAdd;
  String get pailsCh2NameAdd => _pailsCh2NameAdd ?? '';
  bool hasPailsCh2NameAdd() => _pailsCh2NameAdd != null;

  // "pailsCh2Day" field.
  String? _pailsCh2Day;
  String get pailsCh2Day => _pailsCh2Day ?? '';
  bool hasPailsCh2Day() => _pailsCh2Day != null;

  // "pailsCh2Time" field.
  String? _pailsCh2Time;
  String get pailsCh2Time => _pailsCh2Time ?? '';
  bool hasPailsCh2Time() => _pailsCh2Time != null;

  // "pailsCh2Phone" field.
  String? _pailsCh2Phone;
  String get pailsCh2Phone => _pailsCh2Phone ?? '';
  bool hasPailsCh2Phone() => _pailsCh2Phone != null;

  // "pailsDoctorPic" field.
  String? _pailsDoctorPic;
  String get pailsDoctorPic => _pailsDoctorPic ?? '';
  bool hasPailsDoctorPic() => _pailsDoctorPic != null;

  void _initializeFields() {
    _pailsDoctor = snapshotData['pailsDoctor'] as String?;
    _pailsDoctorExprt = snapshotData['pailsDoctorExprt'] as String?;
    _pailsDoctorEduca = snapshotData['pailsDoctorEduca'] as String?;
    _pailsDoctorWorkLoca = snapshotData['pailsDoctorWorkLoca'] as String?;
    _pailsDoctorTrtment = snapshotData['pailsDoctorTrtment'] as String?;
    _pailsCh1NameAdd = snapshotData['pailsCh1NameAdd'] as String?;
    _pailsCh1Day = snapshotData['pailsCh1Day'] as String?;
    _pailsCh1Time = snapshotData['pailsCh1Time'] as String?;
    _pailsCh1Phone = snapshotData['pailsCh1Phone'] as String?;
    _pailsCh2NameAdd = snapshotData['pailsCh2NameAdd'] as String?;
    _pailsCh2Day = snapshotData['pailsCh2Day'] as String?;
    _pailsCh2Time = snapshotData['pailsCh2Time'] as String?;
    _pailsCh2Phone = snapshotData['pailsCh2Phone'] as String?;
    _pailsDoctorPic = snapshotData['pailsDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pails');

  static Stream<PailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PailsRecord.fromSnapshot(s));

  static Future<PailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PailsRecord.fromSnapshot(s));

  static PailsRecord fromSnapshot(DocumentSnapshot snapshot) => PailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPailsRecordData({
  String? pailsDoctor,
  String? pailsDoctorExprt,
  String? pailsDoctorEduca,
  String? pailsDoctorWorkLoca,
  String? pailsDoctorTrtment,
  String? pailsCh1NameAdd,
  String? pailsCh1Day,
  String? pailsCh1Time,
  String? pailsCh1Phone,
  String? pailsCh2NameAdd,
  String? pailsCh2Day,
  String? pailsCh2Time,
  String? pailsCh2Phone,
  String? pailsDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pailsDoctor': pailsDoctor,
      'pailsDoctorExprt': pailsDoctorExprt,
      'pailsDoctorEduca': pailsDoctorEduca,
      'pailsDoctorWorkLoca': pailsDoctorWorkLoca,
      'pailsDoctorTrtment': pailsDoctorTrtment,
      'pailsCh1NameAdd': pailsCh1NameAdd,
      'pailsCh1Day': pailsCh1Day,
      'pailsCh1Time': pailsCh1Time,
      'pailsCh1Phone': pailsCh1Phone,
      'pailsCh2NameAdd': pailsCh2NameAdd,
      'pailsCh2Day': pailsCh2Day,
      'pailsCh2Time': pailsCh2Time,
      'pailsCh2Phone': pailsCh2Phone,
      'pailsDoctorPic': pailsDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PailsRecordDocumentEquality implements Equality<PailsRecord> {
  const PailsRecordDocumentEquality();

  @override
  bool equals(PailsRecord? e1, PailsRecord? e2) {
    return e1?.pailsDoctor == e2?.pailsDoctor &&
        e1?.pailsDoctorExprt == e2?.pailsDoctorExprt &&
        e1?.pailsDoctorEduca == e2?.pailsDoctorEduca &&
        e1?.pailsDoctorWorkLoca == e2?.pailsDoctorWorkLoca &&
        e1?.pailsDoctorTrtment == e2?.pailsDoctorTrtment &&
        e1?.pailsCh1NameAdd == e2?.pailsCh1NameAdd &&
        e1?.pailsCh1Day == e2?.pailsCh1Day &&
        e1?.pailsCh1Time == e2?.pailsCh1Time &&
        e1?.pailsCh1Phone == e2?.pailsCh1Phone &&
        e1?.pailsCh2NameAdd == e2?.pailsCh2NameAdd &&
        e1?.pailsCh2Day == e2?.pailsCh2Day &&
        e1?.pailsCh2Time == e2?.pailsCh2Time &&
        e1?.pailsCh2Phone == e2?.pailsCh2Phone &&
        e1?.pailsDoctorPic == e2?.pailsDoctorPic;
  }

  @override
  int hash(PailsRecord? e) => const ListEquality().hash([
        e?.pailsDoctor,
        e?.pailsDoctorExprt,
        e?.pailsDoctorEduca,
        e?.pailsDoctorWorkLoca,
        e?.pailsDoctorTrtment,
        e?.pailsCh1NameAdd,
        e?.pailsCh1Day,
        e?.pailsCh1Time,
        e?.pailsCh1Phone,
        e?.pailsCh2NameAdd,
        e?.pailsCh2Day,
        e?.pailsCh2Time,
        e?.pailsCh2Phone,
        e?.pailsDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PailsRecord;
}
