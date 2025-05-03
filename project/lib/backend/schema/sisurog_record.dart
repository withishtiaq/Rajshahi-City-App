import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SisurogRecord extends FirestoreRecord {
  SisurogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sisurogDoctor" field.
  String? _sisurogDoctor;
  String get sisurogDoctor => _sisurogDoctor ?? '';
  bool hasSisurogDoctor() => _sisurogDoctor != null;

  // "sisurogDoctorExprt" field.
  String? _sisurogDoctorExprt;
  String get sisurogDoctorExprt => _sisurogDoctorExprt ?? '';
  bool hasSisurogDoctorExprt() => _sisurogDoctorExprt != null;

  // "sisurogDoctorEduc" field.
  String? _sisurogDoctorEduc;
  String get sisurogDoctorEduc => _sisurogDoctorEduc ?? '';
  bool hasSisurogDoctorEduc() => _sisurogDoctorEduc != null;

  // "sisurogDoctorWorkLo" field.
  String? _sisurogDoctorWorkLo;
  String get sisurogDoctorWorkLo => _sisurogDoctorWorkLo ?? '';
  bool hasSisurogDoctorWorkLo() => _sisurogDoctorWorkLo != null;

  // "sisurogDoctorTrtmnt" field.
  String? _sisurogDoctorTrtmnt;
  String get sisurogDoctorTrtmnt => _sisurogDoctorTrtmnt ?? '';
  bool hasSisurogDoctorTrtmnt() => _sisurogDoctorTrtmnt != null;

  // "sisurogCh1NameAdd" field.
  String? _sisurogCh1NameAdd;
  String get sisurogCh1NameAdd => _sisurogCh1NameAdd ?? '';
  bool hasSisurogCh1NameAdd() => _sisurogCh1NameAdd != null;

  // "sisurogCh1Day" field.
  String? _sisurogCh1Day;
  String get sisurogCh1Day => _sisurogCh1Day ?? '';
  bool hasSisurogCh1Day() => _sisurogCh1Day != null;

  // "sisurogCh1Time" field.
  String? _sisurogCh1Time;
  String get sisurogCh1Time => _sisurogCh1Time ?? '';
  bool hasSisurogCh1Time() => _sisurogCh1Time != null;

  // "sisurogCh1Phone" field.
  String? _sisurogCh1Phone;
  String get sisurogCh1Phone => _sisurogCh1Phone ?? '';
  bool hasSisurogCh1Phone() => _sisurogCh1Phone != null;

  // "sisurogCh2NameAdd" field.
  String? _sisurogCh2NameAdd;
  String get sisurogCh2NameAdd => _sisurogCh2NameAdd ?? '';
  bool hasSisurogCh2NameAdd() => _sisurogCh2NameAdd != null;

  // "sisurogCh2Day" field.
  String? _sisurogCh2Day;
  String get sisurogCh2Day => _sisurogCh2Day ?? '';
  bool hasSisurogCh2Day() => _sisurogCh2Day != null;

  // "sisurogCh2Time" field.
  String? _sisurogCh2Time;
  String get sisurogCh2Time => _sisurogCh2Time ?? '';
  bool hasSisurogCh2Time() => _sisurogCh2Time != null;

  // "sisurogCh2Phone" field.
  String? _sisurogCh2Phone;
  String get sisurogCh2Phone => _sisurogCh2Phone ?? '';
  bool hasSisurogCh2Phone() => _sisurogCh2Phone != null;

  // "sisurogDoctorPic" field.
  String? _sisurogDoctorPic;
  String get sisurogDoctorPic => _sisurogDoctorPic ?? '';
  bool hasSisurogDoctorPic() => _sisurogDoctorPic != null;

  void _initializeFields() {
    _sisurogDoctor = snapshotData['sisurogDoctor'] as String?;
    _sisurogDoctorExprt = snapshotData['sisurogDoctorExprt'] as String?;
    _sisurogDoctorEduc = snapshotData['sisurogDoctorEduc'] as String?;
    _sisurogDoctorWorkLo = snapshotData['sisurogDoctorWorkLo'] as String?;
    _sisurogDoctorTrtmnt = snapshotData['sisurogDoctorTrtmnt'] as String?;
    _sisurogCh1NameAdd = snapshotData['sisurogCh1NameAdd'] as String?;
    _sisurogCh1Day = snapshotData['sisurogCh1Day'] as String?;
    _sisurogCh1Time = snapshotData['sisurogCh1Time'] as String?;
    _sisurogCh1Phone = snapshotData['sisurogCh1Phone'] as String?;
    _sisurogCh2NameAdd = snapshotData['sisurogCh2NameAdd'] as String?;
    _sisurogCh2Day = snapshotData['sisurogCh2Day'] as String?;
    _sisurogCh2Time = snapshotData['sisurogCh2Time'] as String?;
    _sisurogCh2Phone = snapshotData['sisurogCh2Phone'] as String?;
    _sisurogDoctorPic = snapshotData['sisurogDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sisurog');

  static Stream<SisurogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SisurogRecord.fromSnapshot(s));

  static Future<SisurogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SisurogRecord.fromSnapshot(s));

  static SisurogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SisurogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SisurogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SisurogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SisurogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SisurogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSisurogRecordData({
  String? sisurogDoctor,
  String? sisurogDoctorExprt,
  String? sisurogDoctorEduc,
  String? sisurogDoctorWorkLo,
  String? sisurogDoctorTrtmnt,
  String? sisurogCh1NameAdd,
  String? sisurogCh1Day,
  String? sisurogCh1Time,
  String? sisurogCh1Phone,
  String? sisurogCh2NameAdd,
  String? sisurogCh2Day,
  String? sisurogCh2Time,
  String? sisurogCh2Phone,
  String? sisurogDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sisurogDoctor': sisurogDoctor,
      'sisurogDoctorExprt': sisurogDoctorExprt,
      'sisurogDoctorEduc': sisurogDoctorEduc,
      'sisurogDoctorWorkLo': sisurogDoctorWorkLo,
      'sisurogDoctorTrtmnt': sisurogDoctorTrtmnt,
      'sisurogCh1NameAdd': sisurogCh1NameAdd,
      'sisurogCh1Day': sisurogCh1Day,
      'sisurogCh1Time': sisurogCh1Time,
      'sisurogCh1Phone': sisurogCh1Phone,
      'sisurogCh2NameAdd': sisurogCh2NameAdd,
      'sisurogCh2Day': sisurogCh2Day,
      'sisurogCh2Time': sisurogCh2Time,
      'sisurogCh2Phone': sisurogCh2Phone,
      'sisurogDoctorPic': sisurogDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class SisurogRecordDocumentEquality implements Equality<SisurogRecord> {
  const SisurogRecordDocumentEquality();

  @override
  bool equals(SisurogRecord? e1, SisurogRecord? e2) {
    return e1?.sisurogDoctor == e2?.sisurogDoctor &&
        e1?.sisurogDoctorExprt == e2?.sisurogDoctorExprt &&
        e1?.sisurogDoctorEduc == e2?.sisurogDoctorEduc &&
        e1?.sisurogDoctorWorkLo == e2?.sisurogDoctorWorkLo &&
        e1?.sisurogDoctorTrtmnt == e2?.sisurogDoctorTrtmnt &&
        e1?.sisurogCh1NameAdd == e2?.sisurogCh1NameAdd &&
        e1?.sisurogCh1Day == e2?.sisurogCh1Day &&
        e1?.sisurogCh1Time == e2?.sisurogCh1Time &&
        e1?.sisurogCh1Phone == e2?.sisurogCh1Phone &&
        e1?.sisurogCh2NameAdd == e2?.sisurogCh2NameAdd &&
        e1?.sisurogCh2Day == e2?.sisurogCh2Day &&
        e1?.sisurogCh2Time == e2?.sisurogCh2Time &&
        e1?.sisurogCh2Phone == e2?.sisurogCh2Phone &&
        e1?.sisurogDoctorPic == e2?.sisurogDoctorPic;
  }

  @override
  int hash(SisurogRecord? e) => const ListEquality().hash([
        e?.sisurogDoctor,
        e?.sisurogDoctorExprt,
        e?.sisurogDoctorEduc,
        e?.sisurogDoctorWorkLo,
        e?.sisurogDoctorTrtmnt,
        e?.sisurogCh1NameAdd,
        e?.sisurogCh1Day,
        e?.sisurogCh1Time,
        e?.sisurogCh1Phone,
        e?.sisurogCh2NameAdd,
        e?.sisurogCh2Day,
        e?.sisurogCh2Time,
        e?.sisurogCh2Phone,
        e?.sisurogDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is SisurogRecord;
}
