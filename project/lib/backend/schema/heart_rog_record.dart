import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeartRogRecord extends FirestoreRecord {
  HeartRogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "heartDoctor" field.
  String? _heartDoctor;
  String get heartDoctor => _heartDoctor ?? '';
  bool hasHeartDoctor() => _heartDoctor != null;

  // "heartDoctorExpt" field.
  String? _heartDoctorExpt;
  String get heartDoctorExpt => _heartDoctorExpt ?? '';
  bool hasHeartDoctorExpt() => _heartDoctorExpt != null;

  // "heartDoctorEduca" field.
  String? _heartDoctorEduca;
  String get heartDoctorEduca => _heartDoctorEduca ?? '';
  bool hasHeartDoctorEduca() => _heartDoctorEduca != null;

  // "heartDoctorWorkLoca" field.
  String? _heartDoctorWorkLoca;
  String get heartDoctorWorkLoca => _heartDoctorWorkLoca ?? '';
  bool hasHeartDoctorWorkLoca() => _heartDoctorWorkLoca != null;

  // "heartDoctorTrtment" field.
  String? _heartDoctorTrtment;
  String get heartDoctorTrtment => _heartDoctorTrtment ?? '';
  bool hasHeartDoctorTrtment() => _heartDoctorTrtment != null;

  // "heartCh1NameAdd" field.
  String? _heartCh1NameAdd;
  String get heartCh1NameAdd => _heartCh1NameAdd ?? '';
  bool hasHeartCh1NameAdd() => _heartCh1NameAdd != null;

  // "heartCh1Day" field.
  String? _heartCh1Day;
  String get heartCh1Day => _heartCh1Day ?? '';
  bool hasHeartCh1Day() => _heartCh1Day != null;

  // "heartCh1Time" field.
  String? _heartCh1Time;
  String get heartCh1Time => _heartCh1Time ?? '';
  bool hasHeartCh1Time() => _heartCh1Time != null;

  // "heartCh1Phone" field.
  String? _heartCh1Phone;
  String get heartCh1Phone => _heartCh1Phone ?? '';
  bool hasHeartCh1Phone() => _heartCh1Phone != null;

  // "heartCh2NameAdd" field.
  String? _heartCh2NameAdd;
  String get heartCh2NameAdd => _heartCh2NameAdd ?? '';
  bool hasHeartCh2NameAdd() => _heartCh2NameAdd != null;

  // "heartCh2Day" field.
  String? _heartCh2Day;
  String get heartCh2Day => _heartCh2Day ?? '';
  bool hasHeartCh2Day() => _heartCh2Day != null;

  // "heartCh2Time" field.
  String? _heartCh2Time;
  String get heartCh2Time => _heartCh2Time ?? '';
  bool hasHeartCh2Time() => _heartCh2Time != null;

  // "heartCh2Phone" field.
  String? _heartCh2Phone;
  String get heartCh2Phone => _heartCh2Phone ?? '';
  bool hasHeartCh2Phone() => _heartCh2Phone != null;

  // "heartDoctorPic" field.
  String? _heartDoctorPic;
  String get heartDoctorPic => _heartDoctorPic ?? '';
  bool hasHeartDoctorPic() => _heartDoctorPic != null;

  void _initializeFields() {
    _heartDoctor = snapshotData['heartDoctor'] as String?;
    _heartDoctorExpt = snapshotData['heartDoctorExpt'] as String?;
    _heartDoctorEduca = snapshotData['heartDoctorEduca'] as String?;
    _heartDoctorWorkLoca = snapshotData['heartDoctorWorkLoca'] as String?;
    _heartDoctorTrtment = snapshotData['heartDoctorTrtment'] as String?;
    _heartCh1NameAdd = snapshotData['heartCh1NameAdd'] as String?;
    _heartCh1Day = snapshotData['heartCh1Day'] as String?;
    _heartCh1Time = snapshotData['heartCh1Time'] as String?;
    _heartCh1Phone = snapshotData['heartCh1Phone'] as String?;
    _heartCh2NameAdd = snapshotData['heartCh2NameAdd'] as String?;
    _heartCh2Day = snapshotData['heartCh2Day'] as String?;
    _heartCh2Time = snapshotData['heartCh2Time'] as String?;
    _heartCh2Phone = snapshotData['heartCh2Phone'] as String?;
    _heartDoctorPic = snapshotData['heartDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('heartRog');

  static Stream<HeartRogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HeartRogRecord.fromSnapshot(s));

  static Future<HeartRogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HeartRogRecord.fromSnapshot(s));

  static HeartRogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HeartRogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HeartRogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HeartRogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HeartRogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HeartRogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHeartRogRecordData({
  String? heartDoctor,
  String? heartDoctorExpt,
  String? heartDoctorEduca,
  String? heartDoctorWorkLoca,
  String? heartDoctorTrtment,
  String? heartCh1NameAdd,
  String? heartCh1Day,
  String? heartCh1Time,
  String? heartCh1Phone,
  String? heartCh2NameAdd,
  String? heartCh2Day,
  String? heartCh2Time,
  String? heartCh2Phone,
  String? heartDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heartDoctor': heartDoctor,
      'heartDoctorExpt': heartDoctorExpt,
      'heartDoctorEduca': heartDoctorEduca,
      'heartDoctorWorkLoca': heartDoctorWorkLoca,
      'heartDoctorTrtment': heartDoctorTrtment,
      'heartCh1NameAdd': heartCh1NameAdd,
      'heartCh1Day': heartCh1Day,
      'heartCh1Time': heartCh1Time,
      'heartCh1Phone': heartCh1Phone,
      'heartCh2NameAdd': heartCh2NameAdd,
      'heartCh2Day': heartCh2Day,
      'heartCh2Time': heartCh2Time,
      'heartCh2Phone': heartCh2Phone,
      'heartDoctorPic': heartDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class HeartRogRecordDocumentEquality implements Equality<HeartRogRecord> {
  const HeartRogRecordDocumentEquality();

  @override
  bool equals(HeartRogRecord? e1, HeartRogRecord? e2) {
    return e1?.heartDoctor == e2?.heartDoctor &&
        e1?.heartDoctorExpt == e2?.heartDoctorExpt &&
        e1?.heartDoctorEduca == e2?.heartDoctorEduca &&
        e1?.heartDoctorWorkLoca == e2?.heartDoctorWorkLoca &&
        e1?.heartDoctorTrtment == e2?.heartDoctorTrtment &&
        e1?.heartCh1NameAdd == e2?.heartCh1NameAdd &&
        e1?.heartCh1Day == e2?.heartCh1Day &&
        e1?.heartCh1Time == e2?.heartCh1Time &&
        e1?.heartCh1Phone == e2?.heartCh1Phone &&
        e1?.heartCh2NameAdd == e2?.heartCh2NameAdd &&
        e1?.heartCh2Day == e2?.heartCh2Day &&
        e1?.heartCh2Time == e2?.heartCh2Time &&
        e1?.heartCh2Phone == e2?.heartCh2Phone &&
        e1?.heartDoctorPic == e2?.heartDoctorPic;
  }

  @override
  int hash(HeartRogRecord? e) => const ListEquality().hash([
        e?.heartDoctor,
        e?.heartDoctorExpt,
        e?.heartDoctorEduca,
        e?.heartDoctorWorkLoca,
        e?.heartDoctorTrtment,
        e?.heartCh1NameAdd,
        e?.heartCh1Day,
        e?.heartCh1Time,
        e?.heartCh1Phone,
        e?.heartCh2NameAdd,
        e?.heartCh2Day,
        e?.heartCh2Time,
        e?.heartCh2Phone,
        e?.heartDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is HeartRogRecord;
}
