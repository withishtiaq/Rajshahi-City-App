import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GainiRecord extends FirestoreRecord {
  GainiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gainiDoctor" field.
  String? _gainiDoctor;
  String get gainiDoctor => _gainiDoctor ?? '';
  bool hasGainiDoctor() => _gainiDoctor != null;

  // "gainiDoctorExprt" field.
  String? _gainiDoctorExprt;
  String get gainiDoctorExprt => _gainiDoctorExprt ?? '';
  bool hasGainiDoctorExprt() => _gainiDoctorExprt != null;

  // "gainiDoctorEduca" field.
  String? _gainiDoctorEduca;
  String get gainiDoctorEduca => _gainiDoctorEduca ?? '';
  bool hasGainiDoctorEduca() => _gainiDoctorEduca != null;

  // "gainiDoctorWorkLoca" field.
  String? _gainiDoctorWorkLoca;
  String get gainiDoctorWorkLoca => _gainiDoctorWorkLoca ?? '';
  bool hasGainiDoctorWorkLoca() => _gainiDoctorWorkLoca != null;

  // "gainiDoctorTrtmnt" field.
  String? _gainiDoctorTrtmnt;
  String get gainiDoctorTrtmnt => _gainiDoctorTrtmnt ?? '';
  bool hasGainiDoctorTrtmnt() => _gainiDoctorTrtmnt != null;

  // "gainiCh1NameAdd" field.
  String? _gainiCh1NameAdd;
  String get gainiCh1NameAdd => _gainiCh1NameAdd ?? '';
  bool hasGainiCh1NameAdd() => _gainiCh1NameAdd != null;

  // "gainiCh1Day" field.
  String? _gainiCh1Day;
  String get gainiCh1Day => _gainiCh1Day ?? '';
  bool hasGainiCh1Day() => _gainiCh1Day != null;

  // "gainiCh1Time" field.
  String? _gainiCh1Time;
  String get gainiCh1Time => _gainiCh1Time ?? '';
  bool hasGainiCh1Time() => _gainiCh1Time != null;

  // "gainiCh1Phone" field.
  String? _gainiCh1Phone;
  String get gainiCh1Phone => _gainiCh1Phone ?? '';
  bool hasGainiCh1Phone() => _gainiCh1Phone != null;

  // "gainiCh2NameAdd" field.
  String? _gainiCh2NameAdd;
  String get gainiCh2NameAdd => _gainiCh2NameAdd ?? '';
  bool hasGainiCh2NameAdd() => _gainiCh2NameAdd != null;

  // "gainiCh2Day" field.
  String? _gainiCh2Day;
  String get gainiCh2Day => _gainiCh2Day ?? '';
  bool hasGainiCh2Day() => _gainiCh2Day != null;

  // "gainiCh2Time" field.
  String? _gainiCh2Time;
  String get gainiCh2Time => _gainiCh2Time ?? '';
  bool hasGainiCh2Time() => _gainiCh2Time != null;

  // "gainiCh2Phone" field.
  String? _gainiCh2Phone;
  String get gainiCh2Phone => _gainiCh2Phone ?? '';
  bool hasGainiCh2Phone() => _gainiCh2Phone != null;

  // "gainiDoctorPic" field.
  String? _gainiDoctorPic;
  String get gainiDoctorPic => _gainiDoctorPic ?? '';
  bool hasGainiDoctorPic() => _gainiDoctorPic != null;

  void _initializeFields() {
    _gainiDoctor = snapshotData['gainiDoctor'] as String?;
    _gainiDoctorExprt = snapshotData['gainiDoctorExprt'] as String?;
    _gainiDoctorEduca = snapshotData['gainiDoctorEduca'] as String?;
    _gainiDoctorWorkLoca = snapshotData['gainiDoctorWorkLoca'] as String?;
    _gainiDoctorTrtmnt = snapshotData['gainiDoctorTrtmnt'] as String?;
    _gainiCh1NameAdd = snapshotData['gainiCh1NameAdd'] as String?;
    _gainiCh1Day = snapshotData['gainiCh1Day'] as String?;
    _gainiCh1Time = snapshotData['gainiCh1Time'] as String?;
    _gainiCh1Phone = snapshotData['gainiCh1Phone'] as String?;
    _gainiCh2NameAdd = snapshotData['gainiCh2NameAdd'] as String?;
    _gainiCh2Day = snapshotData['gainiCh2Day'] as String?;
    _gainiCh2Time = snapshotData['gainiCh2Time'] as String?;
    _gainiCh2Phone = snapshotData['gainiCh2Phone'] as String?;
    _gainiDoctorPic = snapshotData['gainiDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gaini');

  static Stream<GainiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GainiRecord.fromSnapshot(s));

  static Future<GainiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GainiRecord.fromSnapshot(s));

  static GainiRecord fromSnapshot(DocumentSnapshot snapshot) => GainiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GainiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GainiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GainiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GainiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGainiRecordData({
  String? gainiDoctor,
  String? gainiDoctorExprt,
  String? gainiDoctorEduca,
  String? gainiDoctorWorkLoca,
  String? gainiDoctorTrtmnt,
  String? gainiCh1NameAdd,
  String? gainiCh1Day,
  String? gainiCh1Time,
  String? gainiCh1Phone,
  String? gainiCh2NameAdd,
  String? gainiCh2Day,
  String? gainiCh2Time,
  String? gainiCh2Phone,
  String? gainiDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'gainiDoctor': gainiDoctor,
      'gainiDoctorExprt': gainiDoctorExprt,
      'gainiDoctorEduca': gainiDoctorEduca,
      'gainiDoctorWorkLoca': gainiDoctorWorkLoca,
      'gainiDoctorTrtmnt': gainiDoctorTrtmnt,
      'gainiCh1NameAdd': gainiCh1NameAdd,
      'gainiCh1Day': gainiCh1Day,
      'gainiCh1Time': gainiCh1Time,
      'gainiCh1Phone': gainiCh1Phone,
      'gainiCh2NameAdd': gainiCh2NameAdd,
      'gainiCh2Day': gainiCh2Day,
      'gainiCh2Time': gainiCh2Time,
      'gainiCh2Phone': gainiCh2Phone,
      'gainiDoctorPic': gainiDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class GainiRecordDocumentEquality implements Equality<GainiRecord> {
  const GainiRecordDocumentEquality();

  @override
  bool equals(GainiRecord? e1, GainiRecord? e2) {
    return e1?.gainiDoctor == e2?.gainiDoctor &&
        e1?.gainiDoctorExprt == e2?.gainiDoctorExprt &&
        e1?.gainiDoctorEduca == e2?.gainiDoctorEduca &&
        e1?.gainiDoctorWorkLoca == e2?.gainiDoctorWorkLoca &&
        e1?.gainiDoctorTrtmnt == e2?.gainiDoctorTrtmnt &&
        e1?.gainiCh1NameAdd == e2?.gainiCh1NameAdd &&
        e1?.gainiCh1Day == e2?.gainiCh1Day &&
        e1?.gainiCh1Time == e2?.gainiCh1Time &&
        e1?.gainiCh1Phone == e2?.gainiCh1Phone &&
        e1?.gainiCh2NameAdd == e2?.gainiCh2NameAdd &&
        e1?.gainiCh2Day == e2?.gainiCh2Day &&
        e1?.gainiCh2Time == e2?.gainiCh2Time &&
        e1?.gainiCh2Phone == e2?.gainiCh2Phone &&
        e1?.gainiDoctorPic == e2?.gainiDoctorPic;
  }

  @override
  int hash(GainiRecord? e) => const ListEquality().hash([
        e?.gainiDoctor,
        e?.gainiDoctorExprt,
        e?.gainiDoctorEduca,
        e?.gainiDoctorWorkLoca,
        e?.gainiDoctorTrtmnt,
        e?.gainiCh1NameAdd,
        e?.gainiCh1Day,
        e?.gainiCh1Time,
        e?.gainiCh1Phone,
        e?.gainiCh2NameAdd,
        e?.gainiCh2Day,
        e?.gainiCh2Time,
        e?.gainiCh2Phone,
        e?.gainiDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is GainiRecord;
}
