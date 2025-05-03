import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BloodRogRecord extends FirestoreRecord {
  BloodRogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bloodDoctor" field.
  String? _bloodDoctor;
  String get bloodDoctor => _bloodDoctor ?? '';
  bool hasBloodDoctor() => _bloodDoctor != null;

  // "bloodDoctorExpt" field.
  String? _bloodDoctorExpt;
  String get bloodDoctorExpt => _bloodDoctorExpt ?? '';
  bool hasBloodDoctorExpt() => _bloodDoctorExpt != null;

  // "bloodDoctorEdu" field.
  String? _bloodDoctorEdu;
  String get bloodDoctorEdu => _bloodDoctorEdu ?? '';
  bool hasBloodDoctorEdu() => _bloodDoctorEdu != null;

  // "bloodDoctWorkLoca" field.
  String? _bloodDoctWorkLoca;
  String get bloodDoctWorkLoca => _bloodDoctWorkLoca ?? '';
  bool hasBloodDoctWorkLoca() => _bloodDoctWorkLoca != null;

  // "bloodDoctorPic" field.
  String? _bloodDoctorPic;
  String get bloodDoctorPic => _bloodDoctorPic ?? '';
  bool hasBloodDoctorPic() => _bloodDoctorPic != null;

  // "bloodDoctorTrtment" field.
  String? _bloodDoctorTrtment;
  String get bloodDoctorTrtment => _bloodDoctorTrtment ?? '';
  bool hasBloodDoctorTrtment() => _bloodDoctorTrtment != null;

  // "bloodCh1NameAdd" field.
  String? _bloodCh1NameAdd;
  String get bloodCh1NameAdd => _bloodCh1NameAdd ?? '';
  bool hasBloodCh1NameAdd() => _bloodCh1NameAdd != null;

  // "bloodCh1Day" field.
  String? _bloodCh1Day;
  String get bloodCh1Day => _bloodCh1Day ?? '';
  bool hasBloodCh1Day() => _bloodCh1Day != null;

  // "bloodCh1Time" field.
  String? _bloodCh1Time;
  String get bloodCh1Time => _bloodCh1Time ?? '';
  bool hasBloodCh1Time() => _bloodCh1Time != null;

  // "bloodCh1Phone" field.
  String? _bloodCh1Phone;
  String get bloodCh1Phone => _bloodCh1Phone ?? '';
  bool hasBloodCh1Phone() => _bloodCh1Phone != null;

  // "bloodCh2NameAdd" field.
  String? _bloodCh2NameAdd;
  String get bloodCh2NameAdd => _bloodCh2NameAdd ?? '';
  bool hasBloodCh2NameAdd() => _bloodCh2NameAdd != null;

  // "bloodCh2Day" field.
  String? _bloodCh2Day;
  String get bloodCh2Day => _bloodCh2Day ?? '';
  bool hasBloodCh2Day() => _bloodCh2Day != null;

  // "bloodCh2Time" field.
  String? _bloodCh2Time;
  String get bloodCh2Time => _bloodCh2Time ?? '';
  bool hasBloodCh2Time() => _bloodCh2Time != null;

  // "bloodCh2Phone" field.
  String? _bloodCh2Phone;
  String get bloodCh2Phone => _bloodCh2Phone ?? '';
  bool hasBloodCh2Phone() => _bloodCh2Phone != null;

  void _initializeFields() {
    _bloodDoctor = snapshotData['bloodDoctor'] as String?;
    _bloodDoctorExpt = snapshotData['bloodDoctorExpt'] as String?;
    _bloodDoctorEdu = snapshotData['bloodDoctorEdu'] as String?;
    _bloodDoctWorkLoca = snapshotData['bloodDoctWorkLoca'] as String?;
    _bloodDoctorPic = snapshotData['bloodDoctorPic'] as String?;
    _bloodDoctorTrtment = snapshotData['bloodDoctorTrtment'] as String?;
    _bloodCh1NameAdd = snapshotData['bloodCh1NameAdd'] as String?;
    _bloodCh1Day = snapshotData['bloodCh1Day'] as String?;
    _bloodCh1Time = snapshotData['bloodCh1Time'] as String?;
    _bloodCh1Phone = snapshotData['bloodCh1Phone'] as String?;
    _bloodCh2NameAdd = snapshotData['bloodCh2NameAdd'] as String?;
    _bloodCh2Day = snapshotData['bloodCh2Day'] as String?;
    _bloodCh2Time = snapshotData['bloodCh2Time'] as String?;
    _bloodCh2Phone = snapshotData['bloodCh2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bloodRog');

  static Stream<BloodRogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodRogRecord.fromSnapshot(s));

  static Future<BloodRogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodRogRecord.fromSnapshot(s));

  static BloodRogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodRogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodRogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodRogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodRogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodRogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodRogRecordData({
  String? bloodDoctor,
  String? bloodDoctorExpt,
  String? bloodDoctorEdu,
  String? bloodDoctWorkLoca,
  String? bloodDoctorPic,
  String? bloodDoctorTrtment,
  String? bloodCh1NameAdd,
  String? bloodCh1Day,
  String? bloodCh1Time,
  String? bloodCh1Phone,
  String? bloodCh2NameAdd,
  String? bloodCh2Day,
  String? bloodCh2Time,
  String? bloodCh2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bloodDoctor': bloodDoctor,
      'bloodDoctorExpt': bloodDoctorExpt,
      'bloodDoctorEdu': bloodDoctorEdu,
      'bloodDoctWorkLoca': bloodDoctWorkLoca,
      'bloodDoctorPic': bloodDoctorPic,
      'bloodDoctorTrtment': bloodDoctorTrtment,
      'bloodCh1NameAdd': bloodCh1NameAdd,
      'bloodCh1Day': bloodCh1Day,
      'bloodCh1Time': bloodCh1Time,
      'bloodCh1Phone': bloodCh1Phone,
      'bloodCh2NameAdd': bloodCh2NameAdd,
      'bloodCh2Day': bloodCh2Day,
      'bloodCh2Time': bloodCh2Time,
      'bloodCh2Phone': bloodCh2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloodRogRecordDocumentEquality implements Equality<BloodRogRecord> {
  const BloodRogRecordDocumentEquality();

  @override
  bool equals(BloodRogRecord? e1, BloodRogRecord? e2) {
    return e1?.bloodDoctor == e2?.bloodDoctor &&
        e1?.bloodDoctorExpt == e2?.bloodDoctorExpt &&
        e1?.bloodDoctorEdu == e2?.bloodDoctorEdu &&
        e1?.bloodDoctWorkLoca == e2?.bloodDoctWorkLoca &&
        e1?.bloodDoctorPic == e2?.bloodDoctorPic &&
        e1?.bloodDoctorTrtment == e2?.bloodDoctorTrtment &&
        e1?.bloodCh1NameAdd == e2?.bloodCh1NameAdd &&
        e1?.bloodCh1Day == e2?.bloodCh1Day &&
        e1?.bloodCh1Time == e2?.bloodCh1Time &&
        e1?.bloodCh1Phone == e2?.bloodCh1Phone &&
        e1?.bloodCh2NameAdd == e2?.bloodCh2NameAdd &&
        e1?.bloodCh2Day == e2?.bloodCh2Day &&
        e1?.bloodCh2Time == e2?.bloodCh2Time &&
        e1?.bloodCh2Phone == e2?.bloodCh2Phone;
  }

  @override
  int hash(BloodRogRecord? e) => const ListEquality().hash([
        e?.bloodDoctor,
        e?.bloodDoctorExpt,
        e?.bloodDoctorEdu,
        e?.bloodDoctWorkLoca,
        e?.bloodDoctorPic,
        e?.bloodDoctorTrtment,
        e?.bloodCh1NameAdd,
        e?.bloodCh1Day,
        e?.bloodCh1Time,
        e?.bloodCh1Phone,
        e?.bloodCh2NameAdd,
        e?.bloodCh2Day,
        e?.bloodCh2Time,
        e?.bloodCh2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is BloodRogRecord;
}
