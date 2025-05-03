import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicineRecord extends FirestoreRecord {
  MedicineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "medicineDoctor" field.
  String? _medicineDoctor;
  String get medicineDoctor => _medicineDoctor ?? '';
  bool hasMedicineDoctor() => _medicineDoctor != null;

  // "medicineDoctorExprt" field.
  String? _medicineDoctorExprt;
  String get medicineDoctorExprt => _medicineDoctorExprt ?? '';
  bool hasMedicineDoctorExprt() => _medicineDoctorExprt != null;

  // "medicineDoctorEduca" field.
  String? _medicineDoctorEduca;
  String get medicineDoctorEduca => _medicineDoctorEduca ?? '';
  bool hasMedicineDoctorEduca() => _medicineDoctorEduca != null;

  // "medicineDoctorWorkLoca" field.
  String? _medicineDoctorWorkLoca;
  String get medicineDoctorWorkLoca => _medicineDoctorWorkLoca ?? '';
  bool hasMedicineDoctorWorkLoca() => _medicineDoctorWorkLoca != null;

  // "medicineDoctorTrtment" field.
  String? _medicineDoctorTrtment;
  String get medicineDoctorTrtment => _medicineDoctorTrtment ?? '';
  bool hasMedicineDoctorTrtment() => _medicineDoctorTrtment != null;

  // "medicineCh1NameAdd" field.
  String? _medicineCh1NameAdd;
  String get medicineCh1NameAdd => _medicineCh1NameAdd ?? '';
  bool hasMedicineCh1NameAdd() => _medicineCh1NameAdd != null;

  // "medicineCh1Day" field.
  String? _medicineCh1Day;
  String get medicineCh1Day => _medicineCh1Day ?? '';
  bool hasMedicineCh1Day() => _medicineCh1Day != null;

  // "medicineCh1Time" field.
  String? _medicineCh1Time;
  String get medicineCh1Time => _medicineCh1Time ?? '';
  bool hasMedicineCh1Time() => _medicineCh1Time != null;

  // "medicineCh1Phone" field.
  String? _medicineCh1Phone;
  String get medicineCh1Phone => _medicineCh1Phone ?? '';
  bool hasMedicineCh1Phone() => _medicineCh1Phone != null;

  // "medicineCh2NameAdd" field.
  String? _medicineCh2NameAdd;
  String get medicineCh2NameAdd => _medicineCh2NameAdd ?? '';
  bool hasMedicineCh2NameAdd() => _medicineCh2NameAdd != null;

  // "medicineCh2Day" field.
  String? _medicineCh2Day;
  String get medicineCh2Day => _medicineCh2Day ?? '';
  bool hasMedicineCh2Day() => _medicineCh2Day != null;

  // "medicineCh2Time" field.
  String? _medicineCh2Time;
  String get medicineCh2Time => _medicineCh2Time ?? '';
  bool hasMedicineCh2Time() => _medicineCh2Time != null;

  // "medicineCh2Phone" field.
  String? _medicineCh2Phone;
  String get medicineCh2Phone => _medicineCh2Phone ?? '';
  bool hasMedicineCh2Phone() => _medicineCh2Phone != null;

  // "medicineDoctorPic" field.
  String? _medicineDoctorPic;
  String get medicineDoctorPic => _medicineDoctorPic ?? '';
  bool hasMedicineDoctorPic() => _medicineDoctorPic != null;

  void _initializeFields() {
    _medicineDoctor = snapshotData['medicineDoctor'] as String?;
    _medicineDoctorExprt = snapshotData['medicineDoctorExprt'] as String?;
    _medicineDoctorEduca = snapshotData['medicineDoctorEduca'] as String?;
    _medicineDoctorWorkLoca = snapshotData['medicineDoctorWorkLoca'] as String?;
    _medicineDoctorTrtment = snapshotData['medicineDoctorTrtment'] as String?;
    _medicineCh1NameAdd = snapshotData['medicineCh1NameAdd'] as String?;
    _medicineCh1Day = snapshotData['medicineCh1Day'] as String?;
    _medicineCh1Time = snapshotData['medicineCh1Time'] as String?;
    _medicineCh1Phone = snapshotData['medicineCh1Phone'] as String?;
    _medicineCh2NameAdd = snapshotData['medicineCh2NameAdd'] as String?;
    _medicineCh2Day = snapshotData['medicineCh2Day'] as String?;
    _medicineCh2Time = snapshotData['medicineCh2Time'] as String?;
    _medicineCh2Phone = snapshotData['medicineCh2Phone'] as String?;
    _medicineDoctorPic = snapshotData['medicineDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicine');

  static Stream<MedicineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicineRecord.fromSnapshot(s));

  static Future<MedicineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicineRecord.fromSnapshot(s));

  static MedicineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicineRecordData({
  String? medicineDoctor,
  String? medicineDoctorExprt,
  String? medicineDoctorEduca,
  String? medicineDoctorWorkLoca,
  String? medicineDoctorTrtment,
  String? medicineCh1NameAdd,
  String? medicineCh1Day,
  String? medicineCh1Time,
  String? medicineCh1Phone,
  String? medicineCh2NameAdd,
  String? medicineCh2Day,
  String? medicineCh2Time,
  String? medicineCh2Phone,
  String? medicineDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'medicineDoctor': medicineDoctor,
      'medicineDoctorExprt': medicineDoctorExprt,
      'medicineDoctorEduca': medicineDoctorEduca,
      'medicineDoctorWorkLoca': medicineDoctorWorkLoca,
      'medicineDoctorTrtment': medicineDoctorTrtment,
      'medicineCh1NameAdd': medicineCh1NameAdd,
      'medicineCh1Day': medicineCh1Day,
      'medicineCh1Time': medicineCh1Time,
      'medicineCh1Phone': medicineCh1Phone,
      'medicineCh2NameAdd': medicineCh2NameAdd,
      'medicineCh2Day': medicineCh2Day,
      'medicineCh2Time': medicineCh2Time,
      'medicineCh2Phone': medicineCh2Phone,
      'medicineDoctorPic': medicineDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicineRecordDocumentEquality implements Equality<MedicineRecord> {
  const MedicineRecordDocumentEquality();

  @override
  bool equals(MedicineRecord? e1, MedicineRecord? e2) {
    return e1?.medicineDoctor == e2?.medicineDoctor &&
        e1?.medicineDoctorExprt == e2?.medicineDoctorExprt &&
        e1?.medicineDoctorEduca == e2?.medicineDoctorEduca &&
        e1?.medicineDoctorWorkLoca == e2?.medicineDoctorWorkLoca &&
        e1?.medicineDoctorTrtment == e2?.medicineDoctorTrtment &&
        e1?.medicineCh1NameAdd == e2?.medicineCh1NameAdd &&
        e1?.medicineCh1Day == e2?.medicineCh1Day &&
        e1?.medicineCh1Time == e2?.medicineCh1Time &&
        e1?.medicineCh1Phone == e2?.medicineCh1Phone &&
        e1?.medicineCh2NameAdd == e2?.medicineCh2NameAdd &&
        e1?.medicineCh2Day == e2?.medicineCh2Day &&
        e1?.medicineCh2Time == e2?.medicineCh2Time &&
        e1?.medicineCh2Phone == e2?.medicineCh2Phone &&
        e1?.medicineDoctorPic == e2?.medicineDoctorPic;
  }

  @override
  int hash(MedicineRecord? e) => const ListEquality().hash([
        e?.medicineDoctor,
        e?.medicineDoctorExprt,
        e?.medicineDoctorEduca,
        e?.medicineDoctorWorkLoca,
        e?.medicineDoctorTrtment,
        e?.medicineCh1NameAdd,
        e?.medicineCh1Day,
        e?.medicineCh1Time,
        e?.medicineCh1Phone,
        e?.medicineCh2NameAdd,
        e?.medicineCh2Day,
        e?.medicineCh2Time,
        e?.medicineCh2Phone,
        e?.medicineDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicineRecord;
}
