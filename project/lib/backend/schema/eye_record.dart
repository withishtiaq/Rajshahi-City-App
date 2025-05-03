import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EyeRecord extends FirestoreRecord {
  EyeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "eyeDoctor" field.
  String? _eyeDoctor;
  String get eyeDoctor => _eyeDoctor ?? '';
  bool hasEyeDoctor() => _eyeDoctor != null;

  // "eyeDoctorExpt" field.
  String? _eyeDoctorExpt;
  String get eyeDoctorExpt => _eyeDoctorExpt ?? '';
  bool hasEyeDoctorExpt() => _eyeDoctorExpt != null;

  // "eyeDoctorEduca" field.
  String? _eyeDoctorEduca;
  String get eyeDoctorEduca => _eyeDoctorEduca ?? '';
  bool hasEyeDoctorEduca() => _eyeDoctorEduca != null;

  // "eyeDoctorWorkLoca" field.
  String? _eyeDoctorWorkLoca;
  String get eyeDoctorWorkLoca => _eyeDoctorWorkLoca ?? '';
  bool hasEyeDoctorWorkLoca() => _eyeDoctorWorkLoca != null;

  // "eyeDoctorTrtmnt" field.
  String? _eyeDoctorTrtmnt;
  String get eyeDoctorTrtmnt => _eyeDoctorTrtmnt ?? '';
  bool hasEyeDoctorTrtmnt() => _eyeDoctorTrtmnt != null;

  // "eyeCh1NameAdd" field.
  String? _eyeCh1NameAdd;
  String get eyeCh1NameAdd => _eyeCh1NameAdd ?? '';
  bool hasEyeCh1NameAdd() => _eyeCh1NameAdd != null;

  // "eyeCh1Day" field.
  String? _eyeCh1Day;
  String get eyeCh1Day => _eyeCh1Day ?? '';
  bool hasEyeCh1Day() => _eyeCh1Day != null;

  // "eyeCh1Time" field.
  String? _eyeCh1Time;
  String get eyeCh1Time => _eyeCh1Time ?? '';
  bool hasEyeCh1Time() => _eyeCh1Time != null;

  // "eyeCh1Phone" field.
  String? _eyeCh1Phone;
  String get eyeCh1Phone => _eyeCh1Phone ?? '';
  bool hasEyeCh1Phone() => _eyeCh1Phone != null;

  // "eyeCh2NameAdd" field.
  String? _eyeCh2NameAdd;
  String get eyeCh2NameAdd => _eyeCh2NameAdd ?? '';
  bool hasEyeCh2NameAdd() => _eyeCh2NameAdd != null;

  // "eyeCh2Day" field.
  String? _eyeCh2Day;
  String get eyeCh2Day => _eyeCh2Day ?? '';
  bool hasEyeCh2Day() => _eyeCh2Day != null;

  // "eyeCh2Time" field.
  String? _eyeCh2Time;
  String get eyeCh2Time => _eyeCh2Time ?? '';
  bool hasEyeCh2Time() => _eyeCh2Time != null;

  // "eyeCh2Phone" field.
  String? _eyeCh2Phone;
  String get eyeCh2Phone => _eyeCh2Phone ?? '';
  bool hasEyeCh2Phone() => _eyeCh2Phone != null;

  // "eyeDoctorPic" field.
  String? _eyeDoctorPic;
  String get eyeDoctorPic => _eyeDoctorPic ?? '';
  bool hasEyeDoctorPic() => _eyeDoctorPic != null;

  void _initializeFields() {
    _eyeDoctor = snapshotData['eyeDoctor'] as String?;
    _eyeDoctorExpt = snapshotData['eyeDoctorExpt'] as String?;
    _eyeDoctorEduca = snapshotData['eyeDoctorEduca'] as String?;
    _eyeDoctorWorkLoca = snapshotData['eyeDoctorWorkLoca'] as String?;
    _eyeDoctorTrtmnt = snapshotData['eyeDoctorTrtmnt'] as String?;
    _eyeCh1NameAdd = snapshotData['eyeCh1NameAdd'] as String?;
    _eyeCh1Day = snapshotData['eyeCh1Day'] as String?;
    _eyeCh1Time = snapshotData['eyeCh1Time'] as String?;
    _eyeCh1Phone = snapshotData['eyeCh1Phone'] as String?;
    _eyeCh2NameAdd = snapshotData['eyeCh2NameAdd'] as String?;
    _eyeCh2Day = snapshotData['eyeCh2Day'] as String?;
    _eyeCh2Time = snapshotData['eyeCh2Time'] as String?;
    _eyeCh2Phone = snapshotData['eyeCh2Phone'] as String?;
    _eyeDoctorPic = snapshotData['eyeDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eye');

  static Stream<EyeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EyeRecord.fromSnapshot(s));

  static Future<EyeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EyeRecord.fromSnapshot(s));

  static EyeRecord fromSnapshot(DocumentSnapshot snapshot) => EyeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EyeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EyeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EyeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EyeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEyeRecordData({
  String? eyeDoctor,
  String? eyeDoctorExpt,
  String? eyeDoctorEduca,
  String? eyeDoctorWorkLoca,
  String? eyeDoctorTrtmnt,
  String? eyeCh1NameAdd,
  String? eyeCh1Day,
  String? eyeCh1Time,
  String? eyeCh1Phone,
  String? eyeCh2NameAdd,
  String? eyeCh2Day,
  String? eyeCh2Time,
  String? eyeCh2Phone,
  String? eyeDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eyeDoctor': eyeDoctor,
      'eyeDoctorExpt': eyeDoctorExpt,
      'eyeDoctorEduca': eyeDoctorEduca,
      'eyeDoctorWorkLoca': eyeDoctorWorkLoca,
      'eyeDoctorTrtmnt': eyeDoctorTrtmnt,
      'eyeCh1NameAdd': eyeCh1NameAdd,
      'eyeCh1Day': eyeCh1Day,
      'eyeCh1Time': eyeCh1Time,
      'eyeCh1Phone': eyeCh1Phone,
      'eyeCh2NameAdd': eyeCh2NameAdd,
      'eyeCh2Day': eyeCh2Day,
      'eyeCh2Time': eyeCh2Time,
      'eyeCh2Phone': eyeCh2Phone,
      'eyeDoctorPic': eyeDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class EyeRecordDocumentEquality implements Equality<EyeRecord> {
  const EyeRecordDocumentEquality();

  @override
  bool equals(EyeRecord? e1, EyeRecord? e2) {
    return e1?.eyeDoctor == e2?.eyeDoctor &&
        e1?.eyeDoctorExpt == e2?.eyeDoctorExpt &&
        e1?.eyeDoctorEduca == e2?.eyeDoctorEduca &&
        e1?.eyeDoctorWorkLoca == e2?.eyeDoctorWorkLoca &&
        e1?.eyeDoctorTrtmnt == e2?.eyeDoctorTrtmnt &&
        e1?.eyeCh1NameAdd == e2?.eyeCh1NameAdd &&
        e1?.eyeCh1Day == e2?.eyeCh1Day &&
        e1?.eyeCh1Time == e2?.eyeCh1Time &&
        e1?.eyeCh1Phone == e2?.eyeCh1Phone &&
        e1?.eyeCh2NameAdd == e2?.eyeCh2NameAdd &&
        e1?.eyeCh2Day == e2?.eyeCh2Day &&
        e1?.eyeCh2Time == e2?.eyeCh2Time &&
        e1?.eyeCh2Phone == e2?.eyeCh2Phone &&
        e1?.eyeDoctorPic == e2?.eyeDoctorPic;
  }

  @override
  int hash(EyeRecord? e) => const ListEquality().hash([
        e?.eyeDoctor,
        e?.eyeDoctorExpt,
        e?.eyeDoctorEduca,
        e?.eyeDoctorWorkLoca,
        e?.eyeDoctorTrtmnt,
        e?.eyeCh1NameAdd,
        e?.eyeCh1Day,
        e?.eyeCh1Time,
        e?.eyeCh1Phone,
        e?.eyeCh2NameAdd,
        e?.eyeCh2Day,
        e?.eyeCh2Time,
        e?.eyeCh2Phone,
        e?.eyeDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is EyeRecord;
}
