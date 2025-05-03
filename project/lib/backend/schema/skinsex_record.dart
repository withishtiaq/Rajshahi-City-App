import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SkinsexRecord extends FirestoreRecord {
  SkinsexRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "skinsexDoctor" field.
  String? _skinsexDoctor;
  String get skinsexDoctor => _skinsexDoctor ?? '';
  bool hasSkinsexDoctor() => _skinsexDoctor != null;

  // "skinsexDoctorExprt" field.
  String? _skinsexDoctorExprt;
  String get skinsexDoctorExprt => _skinsexDoctorExprt ?? '';
  bool hasSkinsexDoctorExprt() => _skinsexDoctorExprt != null;

  // "skinsexDoctorEduca" field.
  String? _skinsexDoctorEduca;
  String get skinsexDoctorEduca => _skinsexDoctorEduca ?? '';
  bool hasSkinsexDoctorEduca() => _skinsexDoctorEduca != null;

  // "skinsexDoctorWorkLo" field.
  String? _skinsexDoctorWorkLo;
  String get skinsexDoctorWorkLo => _skinsexDoctorWorkLo ?? '';
  bool hasSkinsexDoctorWorkLo() => _skinsexDoctorWorkLo != null;

  // "skinsexDoctorTrtmnt" field.
  String? _skinsexDoctorTrtmnt;
  String get skinsexDoctorTrtmnt => _skinsexDoctorTrtmnt ?? '';
  bool hasSkinsexDoctorTrtmnt() => _skinsexDoctorTrtmnt != null;

  // "skinsexCh1NameAdd" field.
  String? _skinsexCh1NameAdd;
  String get skinsexCh1NameAdd => _skinsexCh1NameAdd ?? '';
  bool hasSkinsexCh1NameAdd() => _skinsexCh1NameAdd != null;

  // "skinsexCh1Day" field.
  String? _skinsexCh1Day;
  String get skinsexCh1Day => _skinsexCh1Day ?? '';
  bool hasSkinsexCh1Day() => _skinsexCh1Day != null;

  // "skinsexCh1Time" field.
  String? _skinsexCh1Time;
  String get skinsexCh1Time => _skinsexCh1Time ?? '';
  bool hasSkinsexCh1Time() => _skinsexCh1Time != null;

  // "skinsexCh1Phone" field.
  String? _skinsexCh1Phone;
  String get skinsexCh1Phone => _skinsexCh1Phone ?? '';
  bool hasSkinsexCh1Phone() => _skinsexCh1Phone != null;

  // "skinsexCh2NameAdd" field.
  String? _skinsexCh2NameAdd;
  String get skinsexCh2NameAdd => _skinsexCh2NameAdd ?? '';
  bool hasSkinsexCh2NameAdd() => _skinsexCh2NameAdd != null;

  // "skinsexCh2Day" field.
  String? _skinsexCh2Day;
  String get skinsexCh2Day => _skinsexCh2Day ?? '';
  bool hasSkinsexCh2Day() => _skinsexCh2Day != null;

  // "skinsexCh2Time" field.
  String? _skinsexCh2Time;
  String get skinsexCh2Time => _skinsexCh2Time ?? '';
  bool hasSkinsexCh2Time() => _skinsexCh2Time != null;

  // "skinsexCh2Phone" field.
  String? _skinsexCh2Phone;
  String get skinsexCh2Phone => _skinsexCh2Phone ?? '';
  bool hasSkinsexCh2Phone() => _skinsexCh2Phone != null;

  // "skinsexDoctorPic" field.
  String? _skinsexDoctorPic;
  String get skinsexDoctorPic => _skinsexDoctorPic ?? '';
  bool hasSkinsexDoctorPic() => _skinsexDoctorPic != null;

  void _initializeFields() {
    _skinsexDoctor = snapshotData['skinsexDoctor'] as String?;
    _skinsexDoctorExprt = snapshotData['skinsexDoctorExprt'] as String?;
    _skinsexDoctorEduca = snapshotData['skinsexDoctorEduca'] as String?;
    _skinsexDoctorWorkLo = snapshotData['skinsexDoctorWorkLo'] as String?;
    _skinsexDoctorTrtmnt = snapshotData['skinsexDoctorTrtmnt'] as String?;
    _skinsexCh1NameAdd = snapshotData['skinsexCh1NameAdd'] as String?;
    _skinsexCh1Day = snapshotData['skinsexCh1Day'] as String?;
    _skinsexCh1Time = snapshotData['skinsexCh1Time'] as String?;
    _skinsexCh1Phone = snapshotData['skinsexCh1Phone'] as String?;
    _skinsexCh2NameAdd = snapshotData['skinsexCh2NameAdd'] as String?;
    _skinsexCh2Day = snapshotData['skinsexCh2Day'] as String?;
    _skinsexCh2Time = snapshotData['skinsexCh2Time'] as String?;
    _skinsexCh2Phone = snapshotData['skinsexCh2Phone'] as String?;
    _skinsexDoctorPic = snapshotData['skinsexDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('skinsex');

  static Stream<SkinsexRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SkinsexRecord.fromSnapshot(s));

  static Future<SkinsexRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SkinsexRecord.fromSnapshot(s));

  static SkinsexRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SkinsexRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SkinsexRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SkinsexRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SkinsexRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SkinsexRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSkinsexRecordData({
  String? skinsexDoctor,
  String? skinsexDoctorExprt,
  String? skinsexDoctorEduca,
  String? skinsexDoctorWorkLo,
  String? skinsexDoctorTrtmnt,
  String? skinsexCh1NameAdd,
  String? skinsexCh1Day,
  String? skinsexCh1Time,
  String? skinsexCh1Phone,
  String? skinsexCh2NameAdd,
  String? skinsexCh2Day,
  String? skinsexCh2Time,
  String? skinsexCh2Phone,
  String? skinsexDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'skinsexDoctor': skinsexDoctor,
      'skinsexDoctorExprt': skinsexDoctorExprt,
      'skinsexDoctorEduca': skinsexDoctorEduca,
      'skinsexDoctorWorkLo': skinsexDoctorWorkLo,
      'skinsexDoctorTrtmnt': skinsexDoctorTrtmnt,
      'skinsexCh1NameAdd': skinsexCh1NameAdd,
      'skinsexCh1Day': skinsexCh1Day,
      'skinsexCh1Time': skinsexCh1Time,
      'skinsexCh1Phone': skinsexCh1Phone,
      'skinsexCh2NameAdd': skinsexCh2NameAdd,
      'skinsexCh2Day': skinsexCh2Day,
      'skinsexCh2Time': skinsexCh2Time,
      'skinsexCh2Phone': skinsexCh2Phone,
      'skinsexDoctorPic': skinsexDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class SkinsexRecordDocumentEquality implements Equality<SkinsexRecord> {
  const SkinsexRecordDocumentEquality();

  @override
  bool equals(SkinsexRecord? e1, SkinsexRecord? e2) {
    return e1?.skinsexDoctor == e2?.skinsexDoctor &&
        e1?.skinsexDoctorExprt == e2?.skinsexDoctorExprt &&
        e1?.skinsexDoctorEduca == e2?.skinsexDoctorEduca &&
        e1?.skinsexDoctorWorkLo == e2?.skinsexDoctorWorkLo &&
        e1?.skinsexDoctorTrtmnt == e2?.skinsexDoctorTrtmnt &&
        e1?.skinsexCh1NameAdd == e2?.skinsexCh1NameAdd &&
        e1?.skinsexCh1Day == e2?.skinsexCh1Day &&
        e1?.skinsexCh1Time == e2?.skinsexCh1Time &&
        e1?.skinsexCh1Phone == e2?.skinsexCh1Phone &&
        e1?.skinsexCh2NameAdd == e2?.skinsexCh2NameAdd &&
        e1?.skinsexCh2Day == e2?.skinsexCh2Day &&
        e1?.skinsexCh2Time == e2?.skinsexCh2Time &&
        e1?.skinsexCh2Phone == e2?.skinsexCh2Phone &&
        e1?.skinsexDoctorPic == e2?.skinsexDoctorPic;
  }

  @override
  int hash(SkinsexRecord? e) => const ListEquality().hash([
        e?.skinsexDoctor,
        e?.skinsexDoctorExprt,
        e?.skinsexDoctorEduca,
        e?.skinsexDoctorWorkLo,
        e?.skinsexDoctorTrtmnt,
        e?.skinsexCh1NameAdd,
        e?.skinsexCh1Day,
        e?.skinsexCh1Time,
        e?.skinsexCh1Phone,
        e?.skinsexCh2NameAdd,
        e?.skinsexCh2Day,
        e?.skinsexCh2Time,
        e?.skinsexCh2Phone,
        e?.skinsexDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is SkinsexRecord;
}
