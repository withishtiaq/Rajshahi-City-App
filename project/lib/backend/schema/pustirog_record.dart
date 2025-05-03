import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PustirogRecord extends FirestoreRecord {
  PustirogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pustirogDoctor" field.
  String? _pustirogDoctor;
  String get pustirogDoctor => _pustirogDoctor ?? '';
  bool hasPustirogDoctor() => _pustirogDoctor != null;

  // "pustirogDoctorExprt" field.
  String? _pustirogDoctorExprt;
  String get pustirogDoctorExprt => _pustirogDoctorExprt ?? '';
  bool hasPustirogDoctorExprt() => _pustirogDoctorExprt != null;

  // "pustirogDoctorEduca" field.
  String? _pustirogDoctorEduca;
  String get pustirogDoctorEduca => _pustirogDoctorEduca ?? '';
  bool hasPustirogDoctorEduca() => _pustirogDoctorEduca != null;

  // "pustirogDoctorWorkLoca" field.
  String? _pustirogDoctorWorkLoca;
  String get pustirogDoctorWorkLoca => _pustirogDoctorWorkLoca ?? '';
  bool hasPustirogDoctorWorkLoca() => _pustirogDoctorWorkLoca != null;

  // "pustirogDoctorTrtment" field.
  String? _pustirogDoctorTrtment;
  String get pustirogDoctorTrtment => _pustirogDoctorTrtment ?? '';
  bool hasPustirogDoctorTrtment() => _pustirogDoctorTrtment != null;

  // "pustirogCh1NameAdd" field.
  String? _pustirogCh1NameAdd;
  String get pustirogCh1NameAdd => _pustirogCh1NameAdd ?? '';
  bool hasPustirogCh1NameAdd() => _pustirogCh1NameAdd != null;

  // "pustirogCh1Day" field.
  String? _pustirogCh1Day;
  String get pustirogCh1Day => _pustirogCh1Day ?? '';
  bool hasPustirogCh1Day() => _pustirogCh1Day != null;

  // "pustirogCh1Time" field.
  String? _pustirogCh1Time;
  String get pustirogCh1Time => _pustirogCh1Time ?? '';
  bool hasPustirogCh1Time() => _pustirogCh1Time != null;

  // "pustirogCh1Phone" field.
  String? _pustirogCh1Phone;
  String get pustirogCh1Phone => _pustirogCh1Phone ?? '';
  bool hasPustirogCh1Phone() => _pustirogCh1Phone != null;

  // "pustirogCh2NameAdd" field.
  String? _pustirogCh2NameAdd;
  String get pustirogCh2NameAdd => _pustirogCh2NameAdd ?? '';
  bool hasPustirogCh2NameAdd() => _pustirogCh2NameAdd != null;

  // "pustirogCh2Day" field.
  String? _pustirogCh2Day;
  String get pustirogCh2Day => _pustirogCh2Day ?? '';
  bool hasPustirogCh2Day() => _pustirogCh2Day != null;

  // "pustirogCh2Time" field.
  String? _pustirogCh2Time;
  String get pustirogCh2Time => _pustirogCh2Time ?? '';
  bool hasPustirogCh2Time() => _pustirogCh2Time != null;

  // "pustirogCh2Phone" field.
  String? _pustirogCh2Phone;
  String get pustirogCh2Phone => _pustirogCh2Phone ?? '';
  bool hasPustirogCh2Phone() => _pustirogCh2Phone != null;

  // "pustirogDoctorPic" field.
  String? _pustirogDoctorPic;
  String get pustirogDoctorPic => _pustirogDoctorPic ?? '';
  bool hasPustirogDoctorPic() => _pustirogDoctorPic != null;

  void _initializeFields() {
    _pustirogDoctor = snapshotData['pustirogDoctor'] as String?;
    _pustirogDoctorExprt = snapshotData['pustirogDoctorExprt'] as String?;
    _pustirogDoctorEduca = snapshotData['pustirogDoctorEduca'] as String?;
    _pustirogDoctorWorkLoca = snapshotData['pustirogDoctorWorkLoca'] as String?;
    _pustirogDoctorTrtment = snapshotData['pustirogDoctorTrtment'] as String?;
    _pustirogCh1NameAdd = snapshotData['pustirogCh1NameAdd'] as String?;
    _pustirogCh1Day = snapshotData['pustirogCh1Day'] as String?;
    _pustirogCh1Time = snapshotData['pustirogCh1Time'] as String?;
    _pustirogCh1Phone = snapshotData['pustirogCh1Phone'] as String?;
    _pustirogCh2NameAdd = snapshotData['pustirogCh2NameAdd'] as String?;
    _pustirogCh2Day = snapshotData['pustirogCh2Day'] as String?;
    _pustirogCh2Time = snapshotData['pustirogCh2Time'] as String?;
    _pustirogCh2Phone = snapshotData['pustirogCh2Phone'] as String?;
    _pustirogDoctorPic = snapshotData['pustirogDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pustirog');

  static Stream<PustirogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PustirogRecord.fromSnapshot(s));

  static Future<PustirogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PustirogRecord.fromSnapshot(s));

  static PustirogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PustirogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PustirogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PustirogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PustirogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PustirogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPustirogRecordData({
  String? pustirogDoctor,
  String? pustirogDoctorExprt,
  String? pustirogDoctorEduca,
  String? pustirogDoctorWorkLoca,
  String? pustirogDoctorTrtment,
  String? pustirogCh1NameAdd,
  String? pustirogCh1Day,
  String? pustirogCh1Time,
  String? pustirogCh1Phone,
  String? pustirogCh2NameAdd,
  String? pustirogCh2Day,
  String? pustirogCh2Time,
  String? pustirogCh2Phone,
  String? pustirogDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pustirogDoctor': pustirogDoctor,
      'pustirogDoctorExprt': pustirogDoctorExprt,
      'pustirogDoctorEduca': pustirogDoctorEduca,
      'pustirogDoctorWorkLoca': pustirogDoctorWorkLoca,
      'pustirogDoctorTrtment': pustirogDoctorTrtment,
      'pustirogCh1NameAdd': pustirogCh1NameAdd,
      'pustirogCh1Day': pustirogCh1Day,
      'pustirogCh1Time': pustirogCh1Time,
      'pustirogCh1Phone': pustirogCh1Phone,
      'pustirogCh2NameAdd': pustirogCh2NameAdd,
      'pustirogCh2Day': pustirogCh2Day,
      'pustirogCh2Time': pustirogCh2Time,
      'pustirogCh2Phone': pustirogCh2Phone,
      'pustirogDoctorPic': pustirogDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PustirogRecordDocumentEquality implements Equality<PustirogRecord> {
  const PustirogRecordDocumentEquality();

  @override
  bool equals(PustirogRecord? e1, PustirogRecord? e2) {
    return e1?.pustirogDoctor == e2?.pustirogDoctor &&
        e1?.pustirogDoctorExprt == e2?.pustirogDoctorExprt &&
        e1?.pustirogDoctorEduca == e2?.pustirogDoctorEduca &&
        e1?.pustirogDoctorWorkLoca == e2?.pustirogDoctorWorkLoca &&
        e1?.pustirogDoctorTrtment == e2?.pustirogDoctorTrtment &&
        e1?.pustirogCh1NameAdd == e2?.pustirogCh1NameAdd &&
        e1?.pustirogCh1Day == e2?.pustirogCh1Day &&
        e1?.pustirogCh1Time == e2?.pustirogCh1Time &&
        e1?.pustirogCh1Phone == e2?.pustirogCh1Phone &&
        e1?.pustirogCh2NameAdd == e2?.pustirogCh2NameAdd &&
        e1?.pustirogCh2Day == e2?.pustirogCh2Day &&
        e1?.pustirogCh2Time == e2?.pustirogCh2Time &&
        e1?.pustirogCh2Phone == e2?.pustirogCh2Phone &&
        e1?.pustirogDoctorPic == e2?.pustirogDoctorPic;
  }

  @override
  int hash(PustirogRecord? e) => const ListEquality().hash([
        e?.pustirogDoctor,
        e?.pustirogDoctorExprt,
        e?.pustirogDoctorEduca,
        e?.pustirogDoctorWorkLoca,
        e?.pustirogDoctorTrtment,
        e?.pustirogCh1NameAdd,
        e?.pustirogCh1Day,
        e?.pustirogCh1Time,
        e?.pustirogCh1Phone,
        e?.pustirogCh2NameAdd,
        e?.pustirogCh2Day,
        e?.pustirogCh2Time,
        e?.pustirogCh2Phone,
        e?.pustirogDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PustirogRecord;
}
