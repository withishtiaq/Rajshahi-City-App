import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlasticsurgeryRecord extends FirestoreRecord {
  PlasticsurgeryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "plasticsurgeryDoctor" field.
  String? _plasticsurgeryDoctor;
  String get plasticsurgeryDoctor => _plasticsurgeryDoctor ?? '';
  bool hasPlasticsurgeryDoctor() => _plasticsurgeryDoctor != null;

  // "plasticsurgeryDoctorExpt" field.
  String? _plasticsurgeryDoctorExpt;
  String get plasticsurgeryDoctorExpt => _plasticsurgeryDoctorExpt ?? '';
  bool hasPlasticsurgeryDoctorExpt() => _plasticsurgeryDoctorExpt != null;

  // "plasticsurgeryDoctorEdu" field.
  String? _plasticsurgeryDoctorEdu;
  String get plasticsurgeryDoctorEdu => _plasticsurgeryDoctorEdu ?? '';
  bool hasPlasticsurgeryDoctorEdu() => _plasticsurgeryDoctorEdu != null;

  // "plasticsurgeryDoctorWorkl" field.
  String? _plasticsurgeryDoctorWorkl;
  String get plasticsurgeryDoctorWorkl => _plasticsurgeryDoctorWorkl ?? '';
  bool hasPlasticsurgeryDoctorWorkl() => _plasticsurgeryDoctorWorkl != null;

  // "plasticsurgeryDoctorTrtmnt" field.
  String? _plasticsurgeryDoctorTrtmnt;
  String get plasticsurgeryDoctorTrtmnt => _plasticsurgeryDoctorTrtmnt ?? '';
  bool hasPlasticsurgeryDoctorTrtmnt() => _plasticsurgeryDoctorTrtmnt != null;

  // "plasticsurgeryCh1NameAdd" field.
  String? _plasticsurgeryCh1NameAdd;
  String get plasticsurgeryCh1NameAdd => _plasticsurgeryCh1NameAdd ?? '';
  bool hasPlasticsurgeryCh1NameAdd() => _plasticsurgeryCh1NameAdd != null;

  // "plasticsurgeryCh1Day" field.
  String? _plasticsurgeryCh1Day;
  String get plasticsurgeryCh1Day => _plasticsurgeryCh1Day ?? '';
  bool hasPlasticsurgeryCh1Day() => _plasticsurgeryCh1Day != null;

  // "plasticsurgeryCh1Time" field.
  String? _plasticsurgeryCh1Time;
  String get plasticsurgeryCh1Time => _plasticsurgeryCh1Time ?? '';
  bool hasPlasticsurgeryCh1Time() => _plasticsurgeryCh1Time != null;

  // "plasticsurgeryCh1Phone" field.
  String? _plasticsurgeryCh1Phone;
  String get plasticsurgeryCh1Phone => _plasticsurgeryCh1Phone ?? '';
  bool hasPlasticsurgeryCh1Phone() => _plasticsurgeryCh1Phone != null;

  // "plasticsurgeryCh2NameAdd" field.
  String? _plasticsurgeryCh2NameAdd;
  String get plasticsurgeryCh2NameAdd => _plasticsurgeryCh2NameAdd ?? '';
  bool hasPlasticsurgeryCh2NameAdd() => _plasticsurgeryCh2NameAdd != null;

  // "plasticsurgeryCh2Day" field.
  String? _plasticsurgeryCh2Day;
  String get plasticsurgeryCh2Day => _plasticsurgeryCh2Day ?? '';
  bool hasPlasticsurgeryCh2Day() => _plasticsurgeryCh2Day != null;

  // "plasticsurgeryCh2Time" field.
  String? _plasticsurgeryCh2Time;
  String get plasticsurgeryCh2Time => _plasticsurgeryCh2Time ?? '';
  bool hasPlasticsurgeryCh2Time() => _plasticsurgeryCh2Time != null;

  // "plasticsurgeryCh2Phone" field.
  String? _plasticsurgeryCh2Phone;
  String get plasticsurgeryCh2Phone => _plasticsurgeryCh2Phone ?? '';
  bool hasPlasticsurgeryCh2Phone() => _plasticsurgeryCh2Phone != null;

  // "plasticsurgeryDoctorPic" field.
  String? _plasticsurgeryDoctorPic;
  String get plasticsurgeryDoctorPic => _plasticsurgeryDoctorPic ?? '';
  bool hasPlasticsurgeryDoctorPic() => _plasticsurgeryDoctorPic != null;

  void _initializeFields() {
    _plasticsurgeryDoctor = snapshotData['plasticsurgeryDoctor'] as String?;
    _plasticsurgeryDoctorExpt =
        snapshotData['plasticsurgeryDoctorExpt'] as String?;
    _plasticsurgeryDoctorEdu =
        snapshotData['plasticsurgeryDoctorEdu'] as String?;
    _plasticsurgeryDoctorWorkl =
        snapshotData['plasticsurgeryDoctorWorkl'] as String?;
    _plasticsurgeryDoctorTrtmnt =
        snapshotData['plasticsurgeryDoctorTrtmnt'] as String?;
    _plasticsurgeryCh1NameAdd =
        snapshotData['plasticsurgeryCh1NameAdd'] as String?;
    _plasticsurgeryCh1Day = snapshotData['plasticsurgeryCh1Day'] as String?;
    _plasticsurgeryCh1Time = snapshotData['plasticsurgeryCh1Time'] as String?;
    _plasticsurgeryCh1Phone = snapshotData['plasticsurgeryCh1Phone'] as String?;
    _plasticsurgeryCh2NameAdd =
        snapshotData['plasticsurgeryCh2NameAdd'] as String?;
    _plasticsurgeryCh2Day = snapshotData['plasticsurgeryCh2Day'] as String?;
    _plasticsurgeryCh2Time = snapshotData['plasticsurgeryCh2Time'] as String?;
    _plasticsurgeryCh2Phone = snapshotData['plasticsurgeryCh2Phone'] as String?;
    _plasticsurgeryDoctorPic =
        snapshotData['plasticsurgeryDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plasticsurgery');

  static Stream<PlasticsurgeryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlasticsurgeryRecord.fromSnapshot(s));

  static Future<PlasticsurgeryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlasticsurgeryRecord.fromSnapshot(s));

  static PlasticsurgeryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlasticsurgeryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlasticsurgeryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlasticsurgeryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlasticsurgeryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlasticsurgeryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlasticsurgeryRecordData({
  String? plasticsurgeryDoctor,
  String? plasticsurgeryDoctorExpt,
  String? plasticsurgeryDoctorEdu,
  String? plasticsurgeryDoctorWorkl,
  String? plasticsurgeryDoctorTrtmnt,
  String? plasticsurgeryCh1NameAdd,
  String? plasticsurgeryCh1Day,
  String? plasticsurgeryCh1Time,
  String? plasticsurgeryCh1Phone,
  String? plasticsurgeryCh2NameAdd,
  String? plasticsurgeryCh2Day,
  String? plasticsurgeryCh2Time,
  String? plasticsurgeryCh2Phone,
  String? plasticsurgeryDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'plasticsurgeryDoctor': plasticsurgeryDoctor,
      'plasticsurgeryDoctorExpt': plasticsurgeryDoctorExpt,
      'plasticsurgeryDoctorEdu': plasticsurgeryDoctorEdu,
      'plasticsurgeryDoctorWorkl': plasticsurgeryDoctorWorkl,
      'plasticsurgeryDoctorTrtmnt': plasticsurgeryDoctorTrtmnt,
      'plasticsurgeryCh1NameAdd': plasticsurgeryCh1NameAdd,
      'plasticsurgeryCh1Day': plasticsurgeryCh1Day,
      'plasticsurgeryCh1Time': plasticsurgeryCh1Time,
      'plasticsurgeryCh1Phone': plasticsurgeryCh1Phone,
      'plasticsurgeryCh2NameAdd': plasticsurgeryCh2NameAdd,
      'plasticsurgeryCh2Day': plasticsurgeryCh2Day,
      'plasticsurgeryCh2Time': plasticsurgeryCh2Time,
      'plasticsurgeryCh2Phone': plasticsurgeryCh2Phone,
      'plasticsurgeryDoctorPic': plasticsurgeryDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlasticsurgeryRecordDocumentEquality
    implements Equality<PlasticsurgeryRecord> {
  const PlasticsurgeryRecordDocumentEquality();

  @override
  bool equals(PlasticsurgeryRecord? e1, PlasticsurgeryRecord? e2) {
    return e1?.plasticsurgeryDoctor == e2?.plasticsurgeryDoctor &&
        e1?.plasticsurgeryDoctorExpt == e2?.plasticsurgeryDoctorExpt &&
        e1?.plasticsurgeryDoctorEdu == e2?.plasticsurgeryDoctorEdu &&
        e1?.plasticsurgeryDoctorWorkl == e2?.plasticsurgeryDoctorWorkl &&
        e1?.plasticsurgeryDoctorTrtmnt == e2?.plasticsurgeryDoctorTrtmnt &&
        e1?.plasticsurgeryCh1NameAdd == e2?.plasticsurgeryCh1NameAdd &&
        e1?.plasticsurgeryCh1Day == e2?.plasticsurgeryCh1Day &&
        e1?.plasticsurgeryCh1Time == e2?.plasticsurgeryCh1Time &&
        e1?.plasticsurgeryCh1Phone == e2?.plasticsurgeryCh1Phone &&
        e1?.plasticsurgeryCh2NameAdd == e2?.plasticsurgeryCh2NameAdd &&
        e1?.plasticsurgeryCh2Day == e2?.plasticsurgeryCh2Day &&
        e1?.plasticsurgeryCh2Time == e2?.plasticsurgeryCh2Time &&
        e1?.plasticsurgeryCh2Phone == e2?.plasticsurgeryCh2Phone &&
        e1?.plasticsurgeryDoctorPic == e2?.plasticsurgeryDoctorPic;
  }

  @override
  int hash(PlasticsurgeryRecord? e) => const ListEquality().hash([
        e?.plasticsurgeryDoctor,
        e?.plasticsurgeryDoctorExpt,
        e?.plasticsurgeryDoctorEdu,
        e?.plasticsurgeryDoctorWorkl,
        e?.plasticsurgeryDoctorTrtmnt,
        e?.plasticsurgeryCh1NameAdd,
        e?.plasticsurgeryCh1Day,
        e?.plasticsurgeryCh1Time,
        e?.plasticsurgeryCh1Phone,
        e?.plasticsurgeryCh2NameAdd,
        e?.plasticsurgeryCh2Day,
        e?.plasticsurgeryCh2Time,
        e?.plasticsurgeryCh2Phone,
        e?.plasticsurgeryDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PlasticsurgeryRecord;
}
