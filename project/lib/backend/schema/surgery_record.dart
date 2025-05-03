import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SurgeryRecord extends FirestoreRecord {
  SurgeryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "surgeryDoctor" field.
  String? _surgeryDoctor;
  String get surgeryDoctor => _surgeryDoctor ?? '';
  bool hasSurgeryDoctor() => _surgeryDoctor != null;

  // "surgeryDoctorExprt" field.
  String? _surgeryDoctorExprt;
  String get surgeryDoctorExprt => _surgeryDoctorExprt ?? '';
  bool hasSurgeryDoctorExprt() => _surgeryDoctorExprt != null;

  // "surgeryDoctorEduca" field.
  String? _surgeryDoctorEduca;
  String get surgeryDoctorEduca => _surgeryDoctorEduca ?? '';
  bool hasSurgeryDoctorEduca() => _surgeryDoctorEduca != null;

  // "surgeryDoctorWorkloca" field.
  String? _surgeryDoctorWorkloca;
  String get surgeryDoctorWorkloca => _surgeryDoctorWorkloca ?? '';
  bool hasSurgeryDoctorWorkloca() => _surgeryDoctorWorkloca != null;

  // "surgeryDoctorTrtmnt" field.
  String? _surgeryDoctorTrtmnt;
  String get surgeryDoctorTrtmnt => _surgeryDoctorTrtmnt ?? '';
  bool hasSurgeryDoctorTrtmnt() => _surgeryDoctorTrtmnt != null;

  // "surgeryCh1NameAdd" field.
  String? _surgeryCh1NameAdd;
  String get surgeryCh1NameAdd => _surgeryCh1NameAdd ?? '';
  bool hasSurgeryCh1NameAdd() => _surgeryCh1NameAdd != null;

  // "surgeryCh1Day" field.
  String? _surgeryCh1Day;
  String get surgeryCh1Day => _surgeryCh1Day ?? '';
  bool hasSurgeryCh1Day() => _surgeryCh1Day != null;

  // "surgeryCh1Time" field.
  String? _surgeryCh1Time;
  String get surgeryCh1Time => _surgeryCh1Time ?? '';
  bool hasSurgeryCh1Time() => _surgeryCh1Time != null;

  // "surgeryCh1Phone" field.
  String? _surgeryCh1Phone;
  String get surgeryCh1Phone => _surgeryCh1Phone ?? '';
  bool hasSurgeryCh1Phone() => _surgeryCh1Phone != null;

  // "surgeryCh2NameAdd" field.
  String? _surgeryCh2NameAdd;
  String get surgeryCh2NameAdd => _surgeryCh2NameAdd ?? '';
  bool hasSurgeryCh2NameAdd() => _surgeryCh2NameAdd != null;

  // "surgeryCh2Day" field.
  String? _surgeryCh2Day;
  String get surgeryCh2Day => _surgeryCh2Day ?? '';
  bool hasSurgeryCh2Day() => _surgeryCh2Day != null;

  // "surgeryCh2Time" field.
  String? _surgeryCh2Time;
  String get surgeryCh2Time => _surgeryCh2Time ?? '';
  bool hasSurgeryCh2Time() => _surgeryCh2Time != null;

  // "surgeryCh2Phone" field.
  String? _surgeryCh2Phone;
  String get surgeryCh2Phone => _surgeryCh2Phone ?? '';
  bool hasSurgeryCh2Phone() => _surgeryCh2Phone != null;

  // "surgeryDoctorPic" field.
  String? _surgeryDoctorPic;
  String get surgeryDoctorPic => _surgeryDoctorPic ?? '';
  bool hasSurgeryDoctorPic() => _surgeryDoctorPic != null;

  void _initializeFields() {
    _surgeryDoctor = snapshotData['surgeryDoctor'] as String?;
    _surgeryDoctorExprt = snapshotData['surgeryDoctorExprt'] as String?;
    _surgeryDoctorEduca = snapshotData['surgeryDoctorEduca'] as String?;
    _surgeryDoctorWorkloca = snapshotData['surgeryDoctorWorkloca'] as String?;
    _surgeryDoctorTrtmnt = snapshotData['surgeryDoctorTrtmnt'] as String?;
    _surgeryCh1NameAdd = snapshotData['surgeryCh1NameAdd'] as String?;
    _surgeryCh1Day = snapshotData['surgeryCh1Day'] as String?;
    _surgeryCh1Time = snapshotData['surgeryCh1Time'] as String?;
    _surgeryCh1Phone = snapshotData['surgeryCh1Phone'] as String?;
    _surgeryCh2NameAdd = snapshotData['surgeryCh2NameAdd'] as String?;
    _surgeryCh2Day = snapshotData['surgeryCh2Day'] as String?;
    _surgeryCh2Time = snapshotData['surgeryCh2Time'] as String?;
    _surgeryCh2Phone = snapshotData['surgeryCh2Phone'] as String?;
    _surgeryDoctorPic = snapshotData['surgeryDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('surgery');

  static Stream<SurgeryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SurgeryRecord.fromSnapshot(s));

  static Future<SurgeryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SurgeryRecord.fromSnapshot(s));

  static SurgeryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SurgeryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SurgeryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SurgeryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SurgeryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SurgeryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSurgeryRecordData({
  String? surgeryDoctor,
  String? surgeryDoctorExprt,
  String? surgeryDoctorEduca,
  String? surgeryDoctorWorkloca,
  String? surgeryDoctorTrtmnt,
  String? surgeryCh1NameAdd,
  String? surgeryCh1Day,
  String? surgeryCh1Time,
  String? surgeryCh1Phone,
  String? surgeryCh2NameAdd,
  String? surgeryCh2Day,
  String? surgeryCh2Time,
  String? surgeryCh2Phone,
  String? surgeryDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'surgeryDoctor': surgeryDoctor,
      'surgeryDoctorExprt': surgeryDoctorExprt,
      'surgeryDoctorEduca': surgeryDoctorEduca,
      'surgeryDoctorWorkloca': surgeryDoctorWorkloca,
      'surgeryDoctorTrtmnt': surgeryDoctorTrtmnt,
      'surgeryCh1NameAdd': surgeryCh1NameAdd,
      'surgeryCh1Day': surgeryCh1Day,
      'surgeryCh1Time': surgeryCh1Time,
      'surgeryCh1Phone': surgeryCh1Phone,
      'surgeryCh2NameAdd': surgeryCh2NameAdd,
      'surgeryCh2Day': surgeryCh2Day,
      'surgeryCh2Time': surgeryCh2Time,
      'surgeryCh2Phone': surgeryCh2Phone,
      'surgeryDoctorPic': surgeryDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class SurgeryRecordDocumentEquality implements Equality<SurgeryRecord> {
  const SurgeryRecordDocumentEquality();

  @override
  bool equals(SurgeryRecord? e1, SurgeryRecord? e2) {
    return e1?.surgeryDoctor == e2?.surgeryDoctor &&
        e1?.surgeryDoctorExprt == e2?.surgeryDoctorExprt &&
        e1?.surgeryDoctorEduca == e2?.surgeryDoctorEduca &&
        e1?.surgeryDoctorWorkloca == e2?.surgeryDoctorWorkloca &&
        e1?.surgeryDoctorTrtmnt == e2?.surgeryDoctorTrtmnt &&
        e1?.surgeryCh1NameAdd == e2?.surgeryCh1NameAdd &&
        e1?.surgeryCh1Day == e2?.surgeryCh1Day &&
        e1?.surgeryCh1Time == e2?.surgeryCh1Time &&
        e1?.surgeryCh1Phone == e2?.surgeryCh1Phone &&
        e1?.surgeryCh2NameAdd == e2?.surgeryCh2NameAdd &&
        e1?.surgeryCh2Day == e2?.surgeryCh2Day &&
        e1?.surgeryCh2Time == e2?.surgeryCh2Time &&
        e1?.surgeryCh2Phone == e2?.surgeryCh2Phone &&
        e1?.surgeryDoctorPic == e2?.surgeryDoctorPic;
  }

  @override
  int hash(SurgeryRecord? e) => const ListEquality().hash([
        e?.surgeryDoctor,
        e?.surgeryDoctorExprt,
        e?.surgeryDoctorEduca,
        e?.surgeryDoctorWorkloca,
        e?.surgeryDoctorTrtmnt,
        e?.surgeryCh1NameAdd,
        e?.surgeryCh1Day,
        e?.surgeryCh1Time,
        e?.surgeryCh1Phone,
        e?.surgeryCh2NameAdd,
        e?.surgeryCh2Day,
        e?.surgeryCh2Time,
        e?.surgeryCh2Phone,
        e?.surgeryDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is SurgeryRecord;
}
