import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HerbalRecord extends FirestoreRecord {
  HerbalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "herbalDoctor" field.
  String? _herbalDoctor;
  String get herbalDoctor => _herbalDoctor ?? '';
  bool hasHerbalDoctor() => _herbalDoctor != null;

  // "herbalDoctorExpt" field.
  String? _herbalDoctorExpt;
  String get herbalDoctorExpt => _herbalDoctorExpt ?? '';
  bool hasHerbalDoctorExpt() => _herbalDoctorExpt != null;

  // "herbalDoctorEduca" field.
  String? _herbalDoctorEduca;
  String get herbalDoctorEduca => _herbalDoctorEduca ?? '';
  bool hasHerbalDoctorEduca() => _herbalDoctorEduca != null;

  // "herbalDoctorWorkLoca" field.
  String? _herbalDoctorWorkLoca;
  String get herbalDoctorWorkLoca => _herbalDoctorWorkLoca ?? '';
  bool hasHerbalDoctorWorkLoca() => _herbalDoctorWorkLoca != null;

  // "herbalDoctorTrtment" field.
  String? _herbalDoctorTrtment;
  String get herbalDoctorTrtment => _herbalDoctorTrtment ?? '';
  bool hasHerbalDoctorTrtment() => _herbalDoctorTrtment != null;

  // "herbalCh1NameAdd" field.
  String? _herbalCh1NameAdd;
  String get herbalCh1NameAdd => _herbalCh1NameAdd ?? '';
  bool hasHerbalCh1NameAdd() => _herbalCh1NameAdd != null;

  // "herbalCh1Day" field.
  String? _herbalCh1Day;
  String get herbalCh1Day => _herbalCh1Day ?? '';
  bool hasHerbalCh1Day() => _herbalCh1Day != null;

  // "herbalCh1Time" field.
  String? _herbalCh1Time;
  String get herbalCh1Time => _herbalCh1Time ?? '';
  bool hasHerbalCh1Time() => _herbalCh1Time != null;

  // "herbalCh1Phone" field.
  String? _herbalCh1Phone;
  String get herbalCh1Phone => _herbalCh1Phone ?? '';
  bool hasHerbalCh1Phone() => _herbalCh1Phone != null;

  // "herbalCh2NameAdd" field.
  String? _herbalCh2NameAdd;
  String get herbalCh2NameAdd => _herbalCh2NameAdd ?? '';
  bool hasHerbalCh2NameAdd() => _herbalCh2NameAdd != null;

  // "herbalCh2Day" field.
  String? _herbalCh2Day;
  String get herbalCh2Day => _herbalCh2Day ?? '';
  bool hasHerbalCh2Day() => _herbalCh2Day != null;

  // "herbalCh2Time" field.
  String? _herbalCh2Time;
  String get herbalCh2Time => _herbalCh2Time ?? '';
  bool hasHerbalCh2Time() => _herbalCh2Time != null;

  // "herbalCh2Phone" field.
  String? _herbalCh2Phone;
  String get herbalCh2Phone => _herbalCh2Phone ?? '';
  bool hasHerbalCh2Phone() => _herbalCh2Phone != null;

  // "herbalDoctorPic" field.
  String? _herbalDoctorPic;
  String get herbalDoctorPic => _herbalDoctorPic ?? '';
  bool hasHerbalDoctorPic() => _herbalDoctorPic != null;

  void _initializeFields() {
    _herbalDoctor = snapshotData['herbalDoctor'] as String?;
    _herbalDoctorExpt = snapshotData['herbalDoctorExpt'] as String?;
    _herbalDoctorEduca = snapshotData['herbalDoctorEduca'] as String?;
    _herbalDoctorWorkLoca = snapshotData['herbalDoctorWorkLoca'] as String?;
    _herbalDoctorTrtment = snapshotData['herbalDoctorTrtment'] as String?;
    _herbalCh1NameAdd = snapshotData['herbalCh1NameAdd'] as String?;
    _herbalCh1Day = snapshotData['herbalCh1Day'] as String?;
    _herbalCh1Time = snapshotData['herbalCh1Time'] as String?;
    _herbalCh1Phone = snapshotData['herbalCh1Phone'] as String?;
    _herbalCh2NameAdd = snapshotData['herbalCh2NameAdd'] as String?;
    _herbalCh2Day = snapshotData['herbalCh2Day'] as String?;
    _herbalCh2Time = snapshotData['herbalCh2Time'] as String?;
    _herbalCh2Phone = snapshotData['herbalCh2Phone'] as String?;
    _herbalDoctorPic = snapshotData['herbalDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('herbal');

  static Stream<HerbalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HerbalRecord.fromSnapshot(s));

  static Future<HerbalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HerbalRecord.fromSnapshot(s));

  static HerbalRecord fromSnapshot(DocumentSnapshot snapshot) => HerbalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HerbalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HerbalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HerbalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HerbalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHerbalRecordData({
  String? herbalDoctor,
  String? herbalDoctorExpt,
  String? herbalDoctorEduca,
  String? herbalDoctorWorkLoca,
  String? herbalDoctorTrtment,
  String? herbalCh1NameAdd,
  String? herbalCh1Day,
  String? herbalCh1Time,
  String? herbalCh1Phone,
  String? herbalCh2NameAdd,
  String? herbalCh2Day,
  String? herbalCh2Time,
  String? herbalCh2Phone,
  String? herbalDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'herbalDoctor': herbalDoctor,
      'herbalDoctorExpt': herbalDoctorExpt,
      'herbalDoctorEduca': herbalDoctorEduca,
      'herbalDoctorWorkLoca': herbalDoctorWorkLoca,
      'herbalDoctorTrtment': herbalDoctorTrtment,
      'herbalCh1NameAdd': herbalCh1NameAdd,
      'herbalCh1Day': herbalCh1Day,
      'herbalCh1Time': herbalCh1Time,
      'herbalCh1Phone': herbalCh1Phone,
      'herbalCh2NameAdd': herbalCh2NameAdd,
      'herbalCh2Day': herbalCh2Day,
      'herbalCh2Time': herbalCh2Time,
      'herbalCh2Phone': herbalCh2Phone,
      'herbalDoctorPic': herbalDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class HerbalRecordDocumentEquality implements Equality<HerbalRecord> {
  const HerbalRecordDocumentEquality();

  @override
  bool equals(HerbalRecord? e1, HerbalRecord? e2) {
    return e1?.herbalDoctor == e2?.herbalDoctor &&
        e1?.herbalDoctorExpt == e2?.herbalDoctorExpt &&
        e1?.herbalDoctorEduca == e2?.herbalDoctorEduca &&
        e1?.herbalDoctorWorkLoca == e2?.herbalDoctorWorkLoca &&
        e1?.herbalDoctorTrtment == e2?.herbalDoctorTrtment &&
        e1?.herbalCh1NameAdd == e2?.herbalCh1NameAdd &&
        e1?.herbalCh1Day == e2?.herbalCh1Day &&
        e1?.herbalCh1Time == e2?.herbalCh1Time &&
        e1?.herbalCh1Phone == e2?.herbalCh1Phone &&
        e1?.herbalCh2NameAdd == e2?.herbalCh2NameAdd &&
        e1?.herbalCh2Day == e2?.herbalCh2Day &&
        e1?.herbalCh2Time == e2?.herbalCh2Time &&
        e1?.herbalCh2Phone == e2?.herbalCh2Phone &&
        e1?.herbalDoctorPic == e2?.herbalDoctorPic;
  }

  @override
  int hash(HerbalRecord? e) => const ListEquality().hash([
        e?.herbalDoctor,
        e?.herbalDoctorExpt,
        e?.herbalDoctorEduca,
        e?.herbalDoctorWorkLoca,
        e?.herbalDoctorTrtment,
        e?.herbalCh1NameAdd,
        e?.herbalCh1Day,
        e?.herbalCh1Time,
        e?.herbalCh1Phone,
        e?.herbalCh2NameAdd,
        e?.herbalCh2Day,
        e?.herbalCh2Time,
        e?.herbalCh2Phone,
        e?.herbalDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is HerbalRecord;
}
