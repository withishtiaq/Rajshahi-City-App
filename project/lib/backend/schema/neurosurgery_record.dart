import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NeurosurgeryRecord extends FirestoreRecord {
  NeurosurgeryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "neurosurgeryDoctor" field.
  String? _neurosurgeryDoctor;
  String get neurosurgeryDoctor => _neurosurgeryDoctor ?? '';
  bool hasNeurosurgeryDoctor() => _neurosurgeryDoctor != null;

  // "neurosurgeryDoctorExprt" field.
  String? _neurosurgeryDoctorExprt;
  String get neurosurgeryDoctorExprt => _neurosurgeryDoctorExprt ?? '';
  bool hasNeurosurgeryDoctorExprt() => _neurosurgeryDoctorExprt != null;

  // "neurosurgeryDoctorEduca" field.
  String? _neurosurgeryDoctorEduca;
  String get neurosurgeryDoctorEduca => _neurosurgeryDoctorEduca ?? '';
  bool hasNeurosurgeryDoctorEduca() => _neurosurgeryDoctorEduca != null;

  // "neurosurgeryDoctorWorkLo" field.
  String? _neurosurgeryDoctorWorkLo;
  String get neurosurgeryDoctorWorkLo => _neurosurgeryDoctorWorkLo ?? '';
  bool hasNeurosurgeryDoctorWorkLo() => _neurosurgeryDoctorWorkLo != null;

  // "neurosurgeryDoctrTrtmnt" field.
  String? _neurosurgeryDoctrTrtmnt;
  String get neurosurgeryDoctrTrtmnt => _neurosurgeryDoctrTrtmnt ?? '';
  bool hasNeurosurgeryDoctrTrtmnt() => _neurosurgeryDoctrTrtmnt != null;

  // "neurosurgeryCh1NameAdd" field.
  String? _neurosurgeryCh1NameAdd;
  String get neurosurgeryCh1NameAdd => _neurosurgeryCh1NameAdd ?? '';
  bool hasNeurosurgeryCh1NameAdd() => _neurosurgeryCh1NameAdd != null;

  // "neurosurgeryCh1Day" field.
  String? _neurosurgeryCh1Day;
  String get neurosurgeryCh1Day => _neurosurgeryCh1Day ?? '';
  bool hasNeurosurgeryCh1Day() => _neurosurgeryCh1Day != null;

  // "neurosurgeryCh1Time" field.
  String? _neurosurgeryCh1Time;
  String get neurosurgeryCh1Time => _neurosurgeryCh1Time ?? '';
  bool hasNeurosurgeryCh1Time() => _neurosurgeryCh1Time != null;

  // "neurosurgeryCh1Phone" field.
  String? _neurosurgeryCh1Phone;
  String get neurosurgeryCh1Phone => _neurosurgeryCh1Phone ?? '';
  bool hasNeurosurgeryCh1Phone() => _neurosurgeryCh1Phone != null;

  // "neurosurgeryCh2NameAdd" field.
  String? _neurosurgeryCh2NameAdd;
  String get neurosurgeryCh2NameAdd => _neurosurgeryCh2NameAdd ?? '';
  bool hasNeurosurgeryCh2NameAdd() => _neurosurgeryCh2NameAdd != null;

  // "neurosurgeryCh2Day" field.
  String? _neurosurgeryCh2Day;
  String get neurosurgeryCh2Day => _neurosurgeryCh2Day ?? '';
  bool hasNeurosurgeryCh2Day() => _neurosurgeryCh2Day != null;

  // "neurosurgeryCh2Time" field.
  String? _neurosurgeryCh2Time;
  String get neurosurgeryCh2Time => _neurosurgeryCh2Time ?? '';
  bool hasNeurosurgeryCh2Time() => _neurosurgeryCh2Time != null;

  // "neurosurgeryCh2Phone" field.
  String? _neurosurgeryCh2Phone;
  String get neurosurgeryCh2Phone => _neurosurgeryCh2Phone ?? '';
  bool hasNeurosurgeryCh2Phone() => _neurosurgeryCh2Phone != null;

  // "neurosurgeryDoctorPic" field.
  String? _neurosurgeryDoctorPic;
  String get neurosurgeryDoctorPic => _neurosurgeryDoctorPic ?? '';
  bool hasNeurosurgeryDoctorPic() => _neurosurgeryDoctorPic != null;

  void _initializeFields() {
    _neurosurgeryDoctor = snapshotData['neurosurgeryDoctor'] as String?;
    _neurosurgeryDoctorExprt =
        snapshotData['neurosurgeryDoctorExprt'] as String?;
    _neurosurgeryDoctorEduca =
        snapshotData['neurosurgeryDoctorEduca'] as String?;
    _neurosurgeryDoctorWorkLo =
        snapshotData['neurosurgeryDoctorWorkLo'] as String?;
    _neurosurgeryDoctrTrtmnt =
        snapshotData['neurosurgeryDoctrTrtmnt'] as String?;
    _neurosurgeryCh1NameAdd = snapshotData['neurosurgeryCh1NameAdd'] as String?;
    _neurosurgeryCh1Day = snapshotData['neurosurgeryCh1Day'] as String?;
    _neurosurgeryCh1Time = snapshotData['neurosurgeryCh1Time'] as String?;
    _neurosurgeryCh1Phone = snapshotData['neurosurgeryCh1Phone'] as String?;
    _neurosurgeryCh2NameAdd = snapshotData['neurosurgeryCh2NameAdd'] as String?;
    _neurosurgeryCh2Day = snapshotData['neurosurgeryCh2Day'] as String?;
    _neurosurgeryCh2Time = snapshotData['neurosurgeryCh2Time'] as String?;
    _neurosurgeryCh2Phone = snapshotData['neurosurgeryCh2Phone'] as String?;
    _neurosurgeryDoctorPic = snapshotData['neurosurgeryDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('neurosurgery');

  static Stream<NeurosurgeryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NeurosurgeryRecord.fromSnapshot(s));

  static Future<NeurosurgeryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NeurosurgeryRecord.fromSnapshot(s));

  static NeurosurgeryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NeurosurgeryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NeurosurgeryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NeurosurgeryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NeurosurgeryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NeurosurgeryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNeurosurgeryRecordData({
  String? neurosurgeryDoctor,
  String? neurosurgeryDoctorExprt,
  String? neurosurgeryDoctorEduca,
  String? neurosurgeryDoctorWorkLo,
  String? neurosurgeryDoctrTrtmnt,
  String? neurosurgeryCh1NameAdd,
  String? neurosurgeryCh1Day,
  String? neurosurgeryCh1Time,
  String? neurosurgeryCh1Phone,
  String? neurosurgeryCh2NameAdd,
  String? neurosurgeryCh2Day,
  String? neurosurgeryCh2Time,
  String? neurosurgeryCh2Phone,
  String? neurosurgeryDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'neurosurgeryDoctor': neurosurgeryDoctor,
      'neurosurgeryDoctorExprt': neurosurgeryDoctorExprt,
      'neurosurgeryDoctorEduca': neurosurgeryDoctorEduca,
      'neurosurgeryDoctorWorkLo': neurosurgeryDoctorWorkLo,
      'neurosurgeryDoctrTrtmnt': neurosurgeryDoctrTrtmnt,
      'neurosurgeryCh1NameAdd': neurosurgeryCh1NameAdd,
      'neurosurgeryCh1Day': neurosurgeryCh1Day,
      'neurosurgeryCh1Time': neurosurgeryCh1Time,
      'neurosurgeryCh1Phone': neurosurgeryCh1Phone,
      'neurosurgeryCh2NameAdd': neurosurgeryCh2NameAdd,
      'neurosurgeryCh2Day': neurosurgeryCh2Day,
      'neurosurgeryCh2Time': neurosurgeryCh2Time,
      'neurosurgeryCh2Phone': neurosurgeryCh2Phone,
      'neurosurgeryDoctorPic': neurosurgeryDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class NeurosurgeryRecordDocumentEquality
    implements Equality<NeurosurgeryRecord> {
  const NeurosurgeryRecordDocumentEquality();

  @override
  bool equals(NeurosurgeryRecord? e1, NeurosurgeryRecord? e2) {
    return e1?.neurosurgeryDoctor == e2?.neurosurgeryDoctor &&
        e1?.neurosurgeryDoctorExprt == e2?.neurosurgeryDoctorExprt &&
        e1?.neurosurgeryDoctorEduca == e2?.neurosurgeryDoctorEduca &&
        e1?.neurosurgeryDoctorWorkLo == e2?.neurosurgeryDoctorWorkLo &&
        e1?.neurosurgeryDoctrTrtmnt == e2?.neurosurgeryDoctrTrtmnt &&
        e1?.neurosurgeryCh1NameAdd == e2?.neurosurgeryCh1NameAdd &&
        e1?.neurosurgeryCh1Day == e2?.neurosurgeryCh1Day &&
        e1?.neurosurgeryCh1Time == e2?.neurosurgeryCh1Time &&
        e1?.neurosurgeryCh1Phone == e2?.neurosurgeryCh1Phone &&
        e1?.neurosurgeryCh2NameAdd == e2?.neurosurgeryCh2NameAdd &&
        e1?.neurosurgeryCh2Day == e2?.neurosurgeryCh2Day &&
        e1?.neurosurgeryCh2Time == e2?.neurosurgeryCh2Time &&
        e1?.neurosurgeryCh2Phone == e2?.neurosurgeryCh2Phone &&
        e1?.neurosurgeryDoctorPic == e2?.neurosurgeryDoctorPic;
  }

  @override
  int hash(NeurosurgeryRecord? e) => const ListEquality().hash([
        e?.neurosurgeryDoctor,
        e?.neurosurgeryDoctorExprt,
        e?.neurosurgeryDoctorEduca,
        e?.neurosurgeryDoctorWorkLo,
        e?.neurosurgeryDoctrTrtmnt,
        e?.neurosurgeryCh1NameAdd,
        e?.neurosurgeryCh1Day,
        e?.neurosurgeryCh1Time,
        e?.neurosurgeryCh1Phone,
        e?.neurosurgeryCh2NameAdd,
        e?.neurosurgeryCh2Day,
        e?.neurosurgeryCh2Time,
        e?.neurosurgeryCh2Phone,
        e?.neurosurgeryDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is NeurosurgeryRecord;
}
