import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeasersurgeryRecord extends FirestoreRecord {
  LeasersurgeryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "leaserDoctor" field.
  String? _leaserDoctor;
  String get leaserDoctor => _leaserDoctor ?? '';
  bool hasLeaserDoctor() => _leaserDoctor != null;

  // "leaserDoctorExprt" field.
  String? _leaserDoctorExprt;
  String get leaserDoctorExprt => _leaserDoctorExprt ?? '';
  bool hasLeaserDoctorExprt() => _leaserDoctorExprt != null;

  // "leaserDoctorEduca" field.
  String? _leaserDoctorEduca;
  String get leaserDoctorEduca => _leaserDoctorEduca ?? '';
  bool hasLeaserDoctorEduca() => _leaserDoctorEduca != null;

  // "leaserDocotorWorkLoca" field.
  String? _leaserDocotorWorkLoca;
  String get leaserDocotorWorkLoca => _leaserDocotorWorkLoca ?? '';
  bool hasLeaserDocotorWorkLoca() => _leaserDocotorWorkLoca != null;

  // "leaserDoctorTrtment" field.
  String? _leaserDoctorTrtment;
  String get leaserDoctorTrtment => _leaserDoctorTrtment ?? '';
  bool hasLeaserDoctorTrtment() => _leaserDoctorTrtment != null;

  // "leaserCh1NameAdd" field.
  String? _leaserCh1NameAdd;
  String get leaserCh1NameAdd => _leaserCh1NameAdd ?? '';
  bool hasLeaserCh1NameAdd() => _leaserCh1NameAdd != null;

  // "leaserCh1Day" field.
  String? _leaserCh1Day;
  String get leaserCh1Day => _leaserCh1Day ?? '';
  bool hasLeaserCh1Day() => _leaserCh1Day != null;

  // "leaserCh1Time" field.
  String? _leaserCh1Time;
  String get leaserCh1Time => _leaserCh1Time ?? '';
  bool hasLeaserCh1Time() => _leaserCh1Time != null;

  // "leaserCh1Phone" field.
  String? _leaserCh1Phone;
  String get leaserCh1Phone => _leaserCh1Phone ?? '';
  bool hasLeaserCh1Phone() => _leaserCh1Phone != null;

  // "leaserCh2NameAdd" field.
  String? _leaserCh2NameAdd;
  String get leaserCh2NameAdd => _leaserCh2NameAdd ?? '';
  bool hasLeaserCh2NameAdd() => _leaserCh2NameAdd != null;

  // "leaserCh2Day" field.
  String? _leaserCh2Day;
  String get leaserCh2Day => _leaserCh2Day ?? '';
  bool hasLeaserCh2Day() => _leaserCh2Day != null;

  // "leaserCh2Time" field.
  String? _leaserCh2Time;
  String get leaserCh2Time => _leaserCh2Time ?? '';
  bool hasLeaserCh2Time() => _leaserCh2Time != null;

  // "leaserCh2Phone" field.
  String? _leaserCh2Phone;
  String get leaserCh2Phone => _leaserCh2Phone ?? '';
  bool hasLeaserCh2Phone() => _leaserCh2Phone != null;

  // "leaserDoctorPic" field.
  String? _leaserDoctorPic;
  String get leaserDoctorPic => _leaserDoctorPic ?? '';
  bool hasLeaserDoctorPic() => _leaserDoctorPic != null;

  void _initializeFields() {
    _leaserDoctor = snapshotData['leaserDoctor'] as String?;
    _leaserDoctorExprt = snapshotData['leaserDoctorExprt'] as String?;
    _leaserDoctorEduca = snapshotData['leaserDoctorEduca'] as String?;
    _leaserDocotorWorkLoca = snapshotData['leaserDocotorWorkLoca'] as String?;
    _leaserDoctorTrtment = snapshotData['leaserDoctorTrtment'] as String?;
    _leaserCh1NameAdd = snapshotData['leaserCh1NameAdd'] as String?;
    _leaserCh1Day = snapshotData['leaserCh1Day'] as String?;
    _leaserCh1Time = snapshotData['leaserCh1Time'] as String?;
    _leaserCh1Phone = snapshotData['leaserCh1Phone'] as String?;
    _leaserCh2NameAdd = snapshotData['leaserCh2NameAdd'] as String?;
    _leaserCh2Day = snapshotData['leaserCh2Day'] as String?;
    _leaserCh2Time = snapshotData['leaserCh2Time'] as String?;
    _leaserCh2Phone = snapshotData['leaserCh2Phone'] as String?;
    _leaserDoctorPic = snapshotData['leaserDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leasersurgery');

  static Stream<LeasersurgeryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeasersurgeryRecord.fromSnapshot(s));

  static Future<LeasersurgeryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeasersurgeryRecord.fromSnapshot(s));

  static LeasersurgeryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeasersurgeryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeasersurgeryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeasersurgeryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeasersurgeryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeasersurgeryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeasersurgeryRecordData({
  String? leaserDoctor,
  String? leaserDoctorExprt,
  String? leaserDoctorEduca,
  String? leaserDocotorWorkLoca,
  String? leaserDoctorTrtment,
  String? leaserCh1NameAdd,
  String? leaserCh1Day,
  String? leaserCh1Time,
  String? leaserCh1Phone,
  String? leaserCh2NameAdd,
  String? leaserCh2Day,
  String? leaserCh2Time,
  String? leaserCh2Phone,
  String? leaserDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'leaserDoctor': leaserDoctor,
      'leaserDoctorExprt': leaserDoctorExprt,
      'leaserDoctorEduca': leaserDoctorEduca,
      'leaserDocotorWorkLoca': leaserDocotorWorkLoca,
      'leaserDoctorTrtment': leaserDoctorTrtment,
      'leaserCh1NameAdd': leaserCh1NameAdd,
      'leaserCh1Day': leaserCh1Day,
      'leaserCh1Time': leaserCh1Time,
      'leaserCh1Phone': leaserCh1Phone,
      'leaserCh2NameAdd': leaserCh2NameAdd,
      'leaserCh2Day': leaserCh2Day,
      'leaserCh2Time': leaserCh2Time,
      'leaserCh2Phone': leaserCh2Phone,
      'leaserDoctorPic': leaserDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeasersurgeryRecordDocumentEquality
    implements Equality<LeasersurgeryRecord> {
  const LeasersurgeryRecordDocumentEquality();

  @override
  bool equals(LeasersurgeryRecord? e1, LeasersurgeryRecord? e2) {
    return e1?.leaserDoctor == e2?.leaserDoctor &&
        e1?.leaserDoctorExprt == e2?.leaserDoctorExprt &&
        e1?.leaserDoctorEduca == e2?.leaserDoctorEduca &&
        e1?.leaserDocotorWorkLoca == e2?.leaserDocotorWorkLoca &&
        e1?.leaserDoctorTrtment == e2?.leaserDoctorTrtment &&
        e1?.leaserCh1NameAdd == e2?.leaserCh1NameAdd &&
        e1?.leaserCh1Day == e2?.leaserCh1Day &&
        e1?.leaserCh1Time == e2?.leaserCh1Time &&
        e1?.leaserCh1Phone == e2?.leaserCh1Phone &&
        e1?.leaserCh2NameAdd == e2?.leaserCh2NameAdd &&
        e1?.leaserCh2Day == e2?.leaserCh2Day &&
        e1?.leaserCh2Time == e2?.leaserCh2Time &&
        e1?.leaserCh2Phone == e2?.leaserCh2Phone &&
        e1?.leaserDoctorPic == e2?.leaserDoctorPic;
  }

  @override
  int hash(LeasersurgeryRecord? e) => const ListEquality().hash([
        e?.leaserDoctor,
        e?.leaserDoctorExprt,
        e?.leaserDoctorEduca,
        e?.leaserDocotorWorkLoca,
        e?.leaserDoctorTrtment,
        e?.leaserCh1NameAdd,
        e?.leaserCh1Day,
        e?.leaserCh1Time,
        e?.leaserCh1Phone,
        e?.leaserCh2NameAdd,
        e?.leaserCh2Day,
        e?.leaserCh2Time,
        e?.leaserCh2Phone,
        e?.leaserDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is LeasersurgeryRecord;
}
