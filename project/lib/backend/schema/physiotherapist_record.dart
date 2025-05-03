import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhysiotherapistRecord extends FirestoreRecord {
  PhysiotherapistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "physioDoctor" field.
  String? _physioDoctor;
  String get physioDoctor => _physioDoctor ?? '';
  bool hasPhysioDoctor() => _physioDoctor != null;

  // "physioDoctorExprt" field.
  String? _physioDoctorExprt;
  String get physioDoctorExprt => _physioDoctorExprt ?? '';
  bool hasPhysioDoctorExprt() => _physioDoctorExprt != null;

  // "physioDoctorEduca" field.
  String? _physioDoctorEduca;
  String get physioDoctorEduca => _physioDoctorEduca ?? '';
  bool hasPhysioDoctorEduca() => _physioDoctorEduca != null;

  // "physioDoctorWorkLoca" field.
  String? _physioDoctorWorkLoca;
  String get physioDoctorWorkLoca => _physioDoctorWorkLoca ?? '';
  bool hasPhysioDoctorWorkLoca() => _physioDoctorWorkLoca != null;

  // "physioDoctorTrtmnt" field.
  String? _physioDoctorTrtmnt;
  String get physioDoctorTrtmnt => _physioDoctorTrtmnt ?? '';
  bool hasPhysioDoctorTrtmnt() => _physioDoctorTrtmnt != null;

  // "physioCh1NameAdd" field.
  String? _physioCh1NameAdd;
  String get physioCh1NameAdd => _physioCh1NameAdd ?? '';
  bool hasPhysioCh1NameAdd() => _physioCh1NameAdd != null;

  // "physioCh1Day" field.
  String? _physioCh1Day;
  String get physioCh1Day => _physioCh1Day ?? '';
  bool hasPhysioCh1Day() => _physioCh1Day != null;

  // "physioCh1Time" field.
  String? _physioCh1Time;
  String get physioCh1Time => _physioCh1Time ?? '';
  bool hasPhysioCh1Time() => _physioCh1Time != null;

  // "physioCh1Phone" field.
  String? _physioCh1Phone;
  String get physioCh1Phone => _physioCh1Phone ?? '';
  bool hasPhysioCh1Phone() => _physioCh1Phone != null;

  // "physioCh2NameAdd" field.
  String? _physioCh2NameAdd;
  String get physioCh2NameAdd => _physioCh2NameAdd ?? '';
  bool hasPhysioCh2NameAdd() => _physioCh2NameAdd != null;

  // "physioCh2Day" field.
  String? _physioCh2Day;
  String get physioCh2Day => _physioCh2Day ?? '';
  bool hasPhysioCh2Day() => _physioCh2Day != null;

  // "physioCh2Time" field.
  String? _physioCh2Time;
  String get physioCh2Time => _physioCh2Time ?? '';
  bool hasPhysioCh2Time() => _physioCh2Time != null;

  // "physioCh2Phone" field.
  String? _physioCh2Phone;
  String get physioCh2Phone => _physioCh2Phone ?? '';
  bool hasPhysioCh2Phone() => _physioCh2Phone != null;

  // "physioDoctorPic" field.
  String? _physioDoctorPic;
  String get physioDoctorPic => _physioDoctorPic ?? '';
  bool hasPhysioDoctorPic() => _physioDoctorPic != null;

  void _initializeFields() {
    _physioDoctor = snapshotData['physioDoctor'] as String?;
    _physioDoctorExprt = snapshotData['physioDoctorExprt'] as String?;
    _physioDoctorEduca = snapshotData['physioDoctorEduca'] as String?;
    _physioDoctorWorkLoca = snapshotData['physioDoctorWorkLoca'] as String?;
    _physioDoctorTrtmnt = snapshotData['physioDoctorTrtmnt'] as String?;
    _physioCh1NameAdd = snapshotData['physioCh1NameAdd'] as String?;
    _physioCh1Day = snapshotData['physioCh1Day'] as String?;
    _physioCh1Time = snapshotData['physioCh1Time'] as String?;
    _physioCh1Phone = snapshotData['physioCh1Phone'] as String?;
    _physioCh2NameAdd = snapshotData['physioCh2NameAdd'] as String?;
    _physioCh2Day = snapshotData['physioCh2Day'] as String?;
    _physioCh2Time = snapshotData['physioCh2Time'] as String?;
    _physioCh2Phone = snapshotData['physioCh2Phone'] as String?;
    _physioDoctorPic = snapshotData['physioDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('physiotherapist');

  static Stream<PhysiotherapistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PhysiotherapistRecord.fromSnapshot(s));

  static Future<PhysiotherapistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PhysiotherapistRecord.fromSnapshot(s));

  static PhysiotherapistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PhysiotherapistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PhysiotherapistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PhysiotherapistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PhysiotherapistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PhysiotherapistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhysiotherapistRecordData({
  String? physioDoctor,
  String? physioDoctorExprt,
  String? physioDoctorEduca,
  String? physioDoctorWorkLoca,
  String? physioDoctorTrtmnt,
  String? physioCh1NameAdd,
  String? physioCh1Day,
  String? physioCh1Time,
  String? physioCh1Phone,
  String? physioCh2NameAdd,
  String? physioCh2Day,
  String? physioCh2Time,
  String? physioCh2Phone,
  String? physioDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'physioDoctor': physioDoctor,
      'physioDoctorExprt': physioDoctorExprt,
      'physioDoctorEduca': physioDoctorEduca,
      'physioDoctorWorkLoca': physioDoctorWorkLoca,
      'physioDoctorTrtmnt': physioDoctorTrtmnt,
      'physioCh1NameAdd': physioCh1NameAdd,
      'physioCh1Day': physioCh1Day,
      'physioCh1Time': physioCh1Time,
      'physioCh1Phone': physioCh1Phone,
      'physioCh2NameAdd': physioCh2NameAdd,
      'physioCh2Day': physioCh2Day,
      'physioCh2Time': physioCh2Time,
      'physioCh2Phone': physioCh2Phone,
      'physioDoctorPic': physioDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PhysiotherapistRecordDocumentEquality
    implements Equality<PhysiotherapistRecord> {
  const PhysiotherapistRecordDocumentEquality();

  @override
  bool equals(PhysiotherapistRecord? e1, PhysiotherapistRecord? e2) {
    return e1?.physioDoctor == e2?.physioDoctor &&
        e1?.physioDoctorExprt == e2?.physioDoctorExprt &&
        e1?.physioDoctorEduca == e2?.physioDoctorEduca &&
        e1?.physioDoctorWorkLoca == e2?.physioDoctorWorkLoca &&
        e1?.physioDoctorTrtmnt == e2?.physioDoctorTrtmnt &&
        e1?.physioCh1NameAdd == e2?.physioCh1NameAdd &&
        e1?.physioCh1Day == e2?.physioCh1Day &&
        e1?.physioCh1Time == e2?.physioCh1Time &&
        e1?.physioCh1Phone == e2?.physioCh1Phone &&
        e1?.physioCh2NameAdd == e2?.physioCh2NameAdd &&
        e1?.physioCh2Day == e2?.physioCh2Day &&
        e1?.physioCh2Time == e2?.physioCh2Time &&
        e1?.physioCh2Phone == e2?.physioCh2Phone &&
        e1?.physioDoctorPic == e2?.physioDoctorPic;
  }

  @override
  int hash(PhysiotherapistRecord? e) => const ListEquality().hash([
        e?.physioDoctor,
        e?.physioDoctorExprt,
        e?.physioDoctorEduca,
        e?.physioDoctorWorkLoca,
        e?.physioDoctorTrtmnt,
        e?.physioCh1NameAdd,
        e?.physioCh1Day,
        e?.physioCh1Time,
        e?.physioCh1Phone,
        e?.physioCh2NameAdd,
        e?.physioCh2Day,
        e?.physioCh2Time,
        e?.physioCh2Phone,
        e?.physioDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PhysiotherapistRecord;
}
