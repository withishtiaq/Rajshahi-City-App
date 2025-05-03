import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SnayurogRecord extends FirestoreRecord {
  SnayurogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "snayurogDoctor" field.
  String? _snayurogDoctor;
  String get snayurogDoctor => _snayurogDoctor ?? '';
  bool hasSnayurogDoctor() => _snayurogDoctor != null;

  // "snayurogDoctorExprt" field.
  String? _snayurogDoctorExprt;
  String get snayurogDoctorExprt => _snayurogDoctorExprt ?? '';
  bool hasSnayurogDoctorExprt() => _snayurogDoctorExprt != null;

  // "snayurogDoctorEduca" field.
  String? _snayurogDoctorEduca;
  String get snayurogDoctorEduca => _snayurogDoctorEduca ?? '';
  bool hasSnayurogDoctorEduca() => _snayurogDoctorEduca != null;

  // "snayurogDoctorWorkLoca" field.
  String? _snayurogDoctorWorkLoca;
  String get snayurogDoctorWorkLoca => _snayurogDoctorWorkLoca ?? '';
  bool hasSnayurogDoctorWorkLoca() => _snayurogDoctorWorkLoca != null;

  // "snayurogDoctorTrtmnt" field.
  String? _snayurogDoctorTrtmnt;
  String get snayurogDoctorTrtmnt => _snayurogDoctorTrtmnt ?? '';
  bool hasSnayurogDoctorTrtmnt() => _snayurogDoctorTrtmnt != null;

  // "snayurogCh1NameAdd" field.
  String? _snayurogCh1NameAdd;
  String get snayurogCh1NameAdd => _snayurogCh1NameAdd ?? '';
  bool hasSnayurogCh1NameAdd() => _snayurogCh1NameAdd != null;

  // "snayurogCh1Day" field.
  String? _snayurogCh1Day;
  String get snayurogCh1Day => _snayurogCh1Day ?? '';
  bool hasSnayurogCh1Day() => _snayurogCh1Day != null;

  // "snayurogCh1Time" field.
  String? _snayurogCh1Time;
  String get snayurogCh1Time => _snayurogCh1Time ?? '';
  bool hasSnayurogCh1Time() => _snayurogCh1Time != null;

  // "snayurogCh1Phone" field.
  String? _snayurogCh1Phone;
  String get snayurogCh1Phone => _snayurogCh1Phone ?? '';
  bool hasSnayurogCh1Phone() => _snayurogCh1Phone != null;

  // "snayurogCh2NameAdd" field.
  String? _snayurogCh2NameAdd;
  String get snayurogCh2NameAdd => _snayurogCh2NameAdd ?? '';
  bool hasSnayurogCh2NameAdd() => _snayurogCh2NameAdd != null;

  // "snayurogCh2Day" field.
  String? _snayurogCh2Day;
  String get snayurogCh2Day => _snayurogCh2Day ?? '';
  bool hasSnayurogCh2Day() => _snayurogCh2Day != null;

  // "snayurogCh2Time" field.
  String? _snayurogCh2Time;
  String get snayurogCh2Time => _snayurogCh2Time ?? '';
  bool hasSnayurogCh2Time() => _snayurogCh2Time != null;

  // "snayurogCh2Phone" field.
  String? _snayurogCh2Phone;
  String get snayurogCh2Phone => _snayurogCh2Phone ?? '';
  bool hasSnayurogCh2Phone() => _snayurogCh2Phone != null;

  // "snayurogDoctorPic" field.
  String? _snayurogDoctorPic;
  String get snayurogDoctorPic => _snayurogDoctorPic ?? '';
  bool hasSnayurogDoctorPic() => _snayurogDoctorPic != null;

  void _initializeFields() {
    _snayurogDoctor = snapshotData['snayurogDoctor'] as String?;
    _snayurogDoctorExprt = snapshotData['snayurogDoctorExprt'] as String?;
    _snayurogDoctorEduca = snapshotData['snayurogDoctorEduca'] as String?;
    _snayurogDoctorWorkLoca = snapshotData['snayurogDoctorWorkLoca'] as String?;
    _snayurogDoctorTrtmnt = snapshotData['snayurogDoctorTrtmnt'] as String?;
    _snayurogCh1NameAdd = snapshotData['snayurogCh1NameAdd'] as String?;
    _snayurogCh1Day = snapshotData['snayurogCh1Day'] as String?;
    _snayurogCh1Time = snapshotData['snayurogCh1Time'] as String?;
    _snayurogCh1Phone = snapshotData['snayurogCh1Phone'] as String?;
    _snayurogCh2NameAdd = snapshotData['snayurogCh2NameAdd'] as String?;
    _snayurogCh2Day = snapshotData['snayurogCh2Day'] as String?;
    _snayurogCh2Time = snapshotData['snayurogCh2Time'] as String?;
    _snayurogCh2Phone = snapshotData['snayurogCh2Phone'] as String?;
    _snayurogDoctorPic = snapshotData['snayurogDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('snayurog');

  static Stream<SnayurogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SnayurogRecord.fromSnapshot(s));

  static Future<SnayurogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SnayurogRecord.fromSnapshot(s));

  static SnayurogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SnayurogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SnayurogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SnayurogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SnayurogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SnayurogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSnayurogRecordData({
  String? snayurogDoctor,
  String? snayurogDoctorExprt,
  String? snayurogDoctorEduca,
  String? snayurogDoctorWorkLoca,
  String? snayurogDoctorTrtmnt,
  String? snayurogCh1NameAdd,
  String? snayurogCh1Day,
  String? snayurogCh1Time,
  String? snayurogCh1Phone,
  String? snayurogCh2NameAdd,
  String? snayurogCh2Day,
  String? snayurogCh2Time,
  String? snayurogCh2Phone,
  String? snayurogDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'snayurogDoctor': snayurogDoctor,
      'snayurogDoctorExprt': snayurogDoctorExprt,
      'snayurogDoctorEduca': snayurogDoctorEduca,
      'snayurogDoctorWorkLoca': snayurogDoctorWorkLoca,
      'snayurogDoctorTrtmnt': snayurogDoctorTrtmnt,
      'snayurogCh1NameAdd': snayurogCh1NameAdd,
      'snayurogCh1Day': snayurogCh1Day,
      'snayurogCh1Time': snayurogCh1Time,
      'snayurogCh1Phone': snayurogCh1Phone,
      'snayurogCh2NameAdd': snayurogCh2NameAdd,
      'snayurogCh2Day': snayurogCh2Day,
      'snayurogCh2Time': snayurogCh2Time,
      'snayurogCh2Phone': snayurogCh2Phone,
      'snayurogDoctorPic': snayurogDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class SnayurogRecordDocumentEquality implements Equality<SnayurogRecord> {
  const SnayurogRecordDocumentEquality();

  @override
  bool equals(SnayurogRecord? e1, SnayurogRecord? e2) {
    return e1?.snayurogDoctor == e2?.snayurogDoctor &&
        e1?.snayurogDoctorExprt == e2?.snayurogDoctorExprt &&
        e1?.snayurogDoctorEduca == e2?.snayurogDoctorEduca &&
        e1?.snayurogDoctorWorkLoca == e2?.snayurogDoctorWorkLoca &&
        e1?.snayurogDoctorTrtmnt == e2?.snayurogDoctorTrtmnt &&
        e1?.snayurogCh1NameAdd == e2?.snayurogCh1NameAdd &&
        e1?.snayurogCh1Day == e2?.snayurogCh1Day &&
        e1?.snayurogCh1Time == e2?.snayurogCh1Time &&
        e1?.snayurogCh1Phone == e2?.snayurogCh1Phone &&
        e1?.snayurogCh2NameAdd == e2?.snayurogCh2NameAdd &&
        e1?.snayurogCh2Day == e2?.snayurogCh2Day &&
        e1?.snayurogCh2Time == e2?.snayurogCh2Time &&
        e1?.snayurogCh2Phone == e2?.snayurogCh2Phone &&
        e1?.snayurogDoctorPic == e2?.snayurogDoctorPic;
  }

  @override
  int hash(SnayurogRecord? e) => const ListEquality().hash([
        e?.snayurogDoctor,
        e?.snayurogDoctorExprt,
        e?.snayurogDoctorEduca,
        e?.snayurogDoctorWorkLoca,
        e?.snayurogDoctorTrtmnt,
        e?.snayurogCh1NameAdd,
        e?.snayurogCh1Day,
        e?.snayurogCh1Time,
        e?.snayurogCh1Phone,
        e?.snayurogCh2NameAdd,
        e?.snayurogCh2Day,
        e?.snayurogCh2Time,
        e?.snayurogCh2Phone,
        e?.snayurogDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is SnayurogRecord;
}
