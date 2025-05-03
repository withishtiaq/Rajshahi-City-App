import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KidnyRecord extends FirestoreRecord {
  KidnyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kidnyDoctor" field.
  String? _kidnyDoctor;
  String get kidnyDoctor => _kidnyDoctor ?? '';
  bool hasKidnyDoctor() => _kidnyDoctor != null;

  // "kidnyDoctorExprt" field.
  String? _kidnyDoctorExprt;
  String get kidnyDoctorExprt => _kidnyDoctorExprt ?? '';
  bool hasKidnyDoctorExprt() => _kidnyDoctorExprt != null;

  // "kidnyDoctorEduca" field.
  String? _kidnyDoctorEduca;
  String get kidnyDoctorEduca => _kidnyDoctorEduca ?? '';
  bool hasKidnyDoctorEduca() => _kidnyDoctorEduca != null;

  // "kidnyDoctorWorkLoca" field.
  String? _kidnyDoctorWorkLoca;
  String get kidnyDoctorWorkLoca => _kidnyDoctorWorkLoca ?? '';
  bool hasKidnyDoctorWorkLoca() => _kidnyDoctorWorkLoca != null;

  // "kidnyDoctorTrtment" field.
  String? _kidnyDoctorTrtment;
  String get kidnyDoctorTrtment => _kidnyDoctorTrtment ?? '';
  bool hasKidnyDoctorTrtment() => _kidnyDoctorTrtment != null;

  // "kidnyCh1NameAdd" field.
  String? _kidnyCh1NameAdd;
  String get kidnyCh1NameAdd => _kidnyCh1NameAdd ?? '';
  bool hasKidnyCh1NameAdd() => _kidnyCh1NameAdd != null;

  // "kidnyCh1Day" field.
  String? _kidnyCh1Day;
  String get kidnyCh1Day => _kidnyCh1Day ?? '';
  bool hasKidnyCh1Day() => _kidnyCh1Day != null;

  // "kidnyCh1Time" field.
  String? _kidnyCh1Time;
  String get kidnyCh1Time => _kidnyCh1Time ?? '';
  bool hasKidnyCh1Time() => _kidnyCh1Time != null;

  // "kidnyCh1Phone" field.
  String? _kidnyCh1Phone;
  String get kidnyCh1Phone => _kidnyCh1Phone ?? '';
  bool hasKidnyCh1Phone() => _kidnyCh1Phone != null;

  // "kidnyCh2NameAdd" field.
  String? _kidnyCh2NameAdd;
  String get kidnyCh2NameAdd => _kidnyCh2NameAdd ?? '';
  bool hasKidnyCh2NameAdd() => _kidnyCh2NameAdd != null;

  // "kidnyCh2Day" field.
  String? _kidnyCh2Day;
  String get kidnyCh2Day => _kidnyCh2Day ?? '';
  bool hasKidnyCh2Day() => _kidnyCh2Day != null;

  // "kidnyCh2Time" field.
  String? _kidnyCh2Time;
  String get kidnyCh2Time => _kidnyCh2Time ?? '';
  bool hasKidnyCh2Time() => _kidnyCh2Time != null;

  // "kidnyCh2Phone" field.
  String? _kidnyCh2Phone;
  String get kidnyCh2Phone => _kidnyCh2Phone ?? '';
  bool hasKidnyCh2Phone() => _kidnyCh2Phone != null;

  // "kidnyDoctorPic" field.
  String? _kidnyDoctorPic;
  String get kidnyDoctorPic => _kidnyDoctorPic ?? '';
  bool hasKidnyDoctorPic() => _kidnyDoctorPic != null;

  void _initializeFields() {
    _kidnyDoctor = snapshotData['kidnyDoctor'] as String?;
    _kidnyDoctorExprt = snapshotData['kidnyDoctorExprt'] as String?;
    _kidnyDoctorEduca = snapshotData['kidnyDoctorEduca'] as String?;
    _kidnyDoctorWorkLoca = snapshotData['kidnyDoctorWorkLoca'] as String?;
    _kidnyDoctorTrtment = snapshotData['kidnyDoctorTrtment'] as String?;
    _kidnyCh1NameAdd = snapshotData['kidnyCh1NameAdd'] as String?;
    _kidnyCh1Day = snapshotData['kidnyCh1Day'] as String?;
    _kidnyCh1Time = snapshotData['kidnyCh1Time'] as String?;
    _kidnyCh1Phone = snapshotData['kidnyCh1Phone'] as String?;
    _kidnyCh2NameAdd = snapshotData['kidnyCh2NameAdd'] as String?;
    _kidnyCh2Day = snapshotData['kidnyCh2Day'] as String?;
    _kidnyCh2Time = snapshotData['kidnyCh2Time'] as String?;
    _kidnyCh2Phone = snapshotData['kidnyCh2Phone'] as String?;
    _kidnyDoctorPic = snapshotData['kidnyDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kidny');

  static Stream<KidnyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KidnyRecord.fromSnapshot(s));

  static Future<KidnyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KidnyRecord.fromSnapshot(s));

  static KidnyRecord fromSnapshot(DocumentSnapshot snapshot) => KidnyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KidnyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KidnyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KidnyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KidnyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKidnyRecordData({
  String? kidnyDoctor,
  String? kidnyDoctorExprt,
  String? kidnyDoctorEduca,
  String? kidnyDoctorWorkLoca,
  String? kidnyDoctorTrtment,
  String? kidnyCh1NameAdd,
  String? kidnyCh1Day,
  String? kidnyCh1Time,
  String? kidnyCh1Phone,
  String? kidnyCh2NameAdd,
  String? kidnyCh2Day,
  String? kidnyCh2Time,
  String? kidnyCh2Phone,
  String? kidnyDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kidnyDoctor': kidnyDoctor,
      'kidnyDoctorExprt': kidnyDoctorExprt,
      'kidnyDoctorEduca': kidnyDoctorEduca,
      'kidnyDoctorWorkLoca': kidnyDoctorWorkLoca,
      'kidnyDoctorTrtment': kidnyDoctorTrtment,
      'kidnyCh1NameAdd': kidnyCh1NameAdd,
      'kidnyCh1Day': kidnyCh1Day,
      'kidnyCh1Time': kidnyCh1Time,
      'kidnyCh1Phone': kidnyCh1Phone,
      'kidnyCh2NameAdd': kidnyCh2NameAdd,
      'kidnyCh2Day': kidnyCh2Day,
      'kidnyCh2Time': kidnyCh2Time,
      'kidnyCh2Phone': kidnyCh2Phone,
      'kidnyDoctorPic': kidnyDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class KidnyRecordDocumentEquality implements Equality<KidnyRecord> {
  const KidnyRecordDocumentEquality();

  @override
  bool equals(KidnyRecord? e1, KidnyRecord? e2) {
    return e1?.kidnyDoctor == e2?.kidnyDoctor &&
        e1?.kidnyDoctorExprt == e2?.kidnyDoctorExprt &&
        e1?.kidnyDoctorEduca == e2?.kidnyDoctorEduca &&
        e1?.kidnyDoctorWorkLoca == e2?.kidnyDoctorWorkLoca &&
        e1?.kidnyDoctorTrtment == e2?.kidnyDoctorTrtment &&
        e1?.kidnyCh1NameAdd == e2?.kidnyCh1NameAdd &&
        e1?.kidnyCh1Day == e2?.kidnyCh1Day &&
        e1?.kidnyCh1Time == e2?.kidnyCh1Time &&
        e1?.kidnyCh1Phone == e2?.kidnyCh1Phone &&
        e1?.kidnyCh2NameAdd == e2?.kidnyCh2NameAdd &&
        e1?.kidnyCh2Day == e2?.kidnyCh2Day &&
        e1?.kidnyCh2Time == e2?.kidnyCh2Time &&
        e1?.kidnyCh2Phone == e2?.kidnyCh2Phone &&
        e1?.kidnyDoctorPic == e2?.kidnyDoctorPic;
  }

  @override
  int hash(KidnyRecord? e) => const ListEquality().hash([
        e?.kidnyDoctor,
        e?.kidnyDoctorExprt,
        e?.kidnyDoctorEduca,
        e?.kidnyDoctorWorkLoca,
        e?.kidnyDoctorTrtment,
        e?.kidnyCh1NameAdd,
        e?.kidnyCh1Day,
        e?.kidnyCh1Time,
        e?.kidnyCh1Phone,
        e?.kidnyCh2NameAdd,
        e?.kidnyCh2Day,
        e?.kidnyCh2Time,
        e?.kidnyCh2Phone,
        e?.kidnyDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is KidnyRecord;
}
