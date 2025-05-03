import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonoRogRecord extends FirestoreRecord {
  MonoRogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctorName" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "expertRog" field.
  String? _expertRog;
  String get expertRog => _expertRog ?? '';
  bool hasExpertRog() => _expertRog != null;

  // "educationDoctor" field.
  String? _educationDoctor;
  String get educationDoctor => _educationDoctor ?? '';
  bool hasEducationDoctor() => _educationDoctor != null;

  // "workLocation" field.
  String? _workLocation;
  String get workLocation => _workLocation ?? '';
  bool hasWorkLocation() => _workLocation != null;

  // "doctorPic" field.
  String? _doctorPic;
  String get doctorPic => _doctorPic ?? '';
  bool hasDoctorPic() => _doctorPic != null;

  // "rogTrtment" field.
  String? _rogTrtment;
  String get rogTrtment => _rogTrtment ?? '';
  bool hasRogTrtment() => _rogTrtment != null;

  // "poster" field.
  DocumentReference? _poster;
  DocumentReference? get poster => _poster;
  bool hasPoster() => _poster != null;

  // "ch1NameAddrs" field.
  String? _ch1NameAddrs;
  String get ch1NameAddrs => _ch1NameAddrs ?? '';
  bool hasCh1NameAddrs() => _ch1NameAddrs != null;

  // "ch2NameAddrs" field.
  String? _ch2NameAddrs;
  String get ch2NameAddrs => _ch2NameAddrs ?? '';
  bool hasCh2NameAddrs() => _ch2NameAddrs != null;

  // "ch1Day" field.
  String? _ch1Day;
  String get ch1Day => _ch1Day ?? '';
  bool hasCh1Day() => _ch1Day != null;

  // "ch2Day" field.
  String? _ch2Day;
  String get ch2Day => _ch2Day ?? '';
  bool hasCh2Day() => _ch2Day != null;

  // "ch1Time" field.
  String? _ch1Time;
  String get ch1Time => _ch1Time ?? '';
  bool hasCh1Time() => _ch1Time != null;

  // "ch2Time" field.
  String? _ch2Time;
  String get ch2Time => _ch2Time ?? '';
  bool hasCh2Time() => _ch2Time != null;

  // "ch1Phone" field.
  String? _ch1Phone;
  String get ch1Phone => _ch1Phone ?? '';
  bool hasCh1Phone() => _ch1Phone != null;

  // "ch2Phone" field.
  String? _ch2Phone;
  String get ch2Phone => _ch2Phone ?? '';
  bool hasCh2Phone() => _ch2Phone != null;

  void _initializeFields() {
    _doctorName = snapshotData['doctorName'] as String?;
    _expertRog = snapshotData['expertRog'] as String?;
    _educationDoctor = snapshotData['educationDoctor'] as String?;
    _workLocation = snapshotData['workLocation'] as String?;
    _doctorPic = snapshotData['doctorPic'] as String?;
    _rogTrtment = snapshotData['rogTrtment'] as String?;
    _poster = snapshotData['poster'] as DocumentReference?;
    _ch1NameAddrs = snapshotData['ch1NameAddrs'] as String?;
    _ch2NameAddrs = snapshotData['ch2NameAddrs'] as String?;
    _ch1Day = snapshotData['ch1Day'] as String?;
    _ch2Day = snapshotData['ch2Day'] as String?;
    _ch1Time = snapshotData['ch1Time'] as String?;
    _ch2Time = snapshotData['ch2Time'] as String?;
    _ch1Phone = snapshotData['ch1Phone'] as String?;
    _ch2Phone = snapshotData['ch2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('monoRog');

  static Stream<MonoRogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonoRogRecord.fromSnapshot(s));

  static Future<MonoRogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MonoRogRecord.fromSnapshot(s));

  static MonoRogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MonoRogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonoRogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonoRogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonoRogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonoRogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonoRogRecordData({
  String? doctorName,
  String? expertRog,
  String? educationDoctor,
  String? workLocation,
  String? doctorPic,
  String? rogTrtment,
  DocumentReference? poster,
  String? ch1NameAddrs,
  String? ch2NameAddrs,
  String? ch1Day,
  String? ch2Day,
  String? ch1Time,
  String? ch2Time,
  String? ch1Phone,
  String? ch2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctorName': doctorName,
      'expertRog': expertRog,
      'educationDoctor': educationDoctor,
      'workLocation': workLocation,
      'doctorPic': doctorPic,
      'rogTrtment': rogTrtment,
      'poster': poster,
      'ch1NameAddrs': ch1NameAddrs,
      'ch2NameAddrs': ch2NameAddrs,
      'ch1Day': ch1Day,
      'ch2Day': ch2Day,
      'ch1Time': ch1Time,
      'ch2Time': ch2Time,
      'ch1Phone': ch1Phone,
      'ch2Phone': ch2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonoRogRecordDocumentEquality implements Equality<MonoRogRecord> {
  const MonoRogRecordDocumentEquality();

  @override
  bool equals(MonoRogRecord? e1, MonoRogRecord? e2) {
    return e1?.doctorName == e2?.doctorName &&
        e1?.expertRog == e2?.expertRog &&
        e1?.educationDoctor == e2?.educationDoctor &&
        e1?.workLocation == e2?.workLocation &&
        e1?.doctorPic == e2?.doctorPic &&
        e1?.rogTrtment == e2?.rogTrtment &&
        e1?.poster == e2?.poster &&
        e1?.ch1NameAddrs == e2?.ch1NameAddrs &&
        e1?.ch2NameAddrs == e2?.ch2NameAddrs &&
        e1?.ch1Day == e2?.ch1Day &&
        e1?.ch2Day == e2?.ch2Day &&
        e1?.ch1Time == e2?.ch1Time &&
        e1?.ch2Time == e2?.ch2Time &&
        e1?.ch1Phone == e2?.ch1Phone &&
        e1?.ch2Phone == e2?.ch2Phone;
  }

  @override
  int hash(MonoRogRecord? e) => const ListEquality().hash([
        e?.doctorName,
        e?.expertRog,
        e?.educationDoctor,
        e?.workLocation,
        e?.doctorPic,
        e?.rogTrtment,
        e?.poster,
        e?.ch1NameAddrs,
        e?.ch2NameAddrs,
        e?.ch1Day,
        e?.ch2Day,
        e?.ch1Time,
        e?.ch2Time,
        e?.ch1Phone,
        e?.ch2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is MonoRogRecord;
}
