import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BurnPlasticRecord extends FirestoreRecord {
  BurnPlasticRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "burnPlasticDoctor" field.
  String? _burnPlasticDoctor;
  String get burnPlasticDoctor => _burnPlasticDoctor ?? '';
  bool hasBurnPlasticDoctor() => _burnPlasticDoctor != null;

  // "burnPlasticDoctorExpt" field.
  String? _burnPlasticDoctorExpt;
  String get burnPlasticDoctorExpt => _burnPlasticDoctorExpt ?? '';
  bool hasBurnPlasticDoctorExpt() => _burnPlasticDoctorExpt != null;

  // "burnPlasticDoctorEdu" field.
  String? _burnPlasticDoctorEdu;
  String get burnPlasticDoctorEdu => _burnPlasticDoctorEdu ?? '';
  bool hasBurnPlasticDoctorEdu() => _burnPlasticDoctorEdu != null;

  // "burnPlasticDoctorWorkLoca" field.
  String? _burnPlasticDoctorWorkLoca;
  String get burnPlasticDoctorWorkLoca => _burnPlasticDoctorWorkLoca ?? '';
  bool hasBurnPlasticDoctorWorkLoca() => _burnPlasticDoctorWorkLoca != null;

  // "burnPlasticDoctorPic" field.
  String? _burnPlasticDoctorPic;
  String get burnPlasticDoctorPic => _burnPlasticDoctorPic ?? '';
  bool hasBurnPlasticDoctorPic() => _burnPlasticDoctorPic != null;

  // "burnPlasticDoctorTrtment" field.
  String? _burnPlasticDoctorTrtment;
  String get burnPlasticDoctorTrtment => _burnPlasticDoctorTrtment ?? '';
  bool hasBurnPlasticDoctorTrtment() => _burnPlasticDoctorTrtment != null;

  // "burnPlasticCh1NamAdd" field.
  String? _burnPlasticCh1NamAdd;
  String get burnPlasticCh1NamAdd => _burnPlasticCh1NamAdd ?? '';
  bool hasBurnPlasticCh1NamAdd() => _burnPlasticCh1NamAdd != null;

  // "burnPlasticCh1Day" field.
  String? _burnPlasticCh1Day;
  String get burnPlasticCh1Day => _burnPlasticCh1Day ?? '';
  bool hasBurnPlasticCh1Day() => _burnPlasticCh1Day != null;

  // "burnPlasticCh1Time" field.
  String? _burnPlasticCh1Time;
  String get burnPlasticCh1Time => _burnPlasticCh1Time ?? '';
  bool hasBurnPlasticCh1Time() => _burnPlasticCh1Time != null;

  // "burnPlasticCh1Phone" field.
  String? _burnPlasticCh1Phone;
  String get burnPlasticCh1Phone => _burnPlasticCh1Phone ?? '';
  bool hasBurnPlasticCh1Phone() => _burnPlasticCh1Phone != null;

  // "burnPlasticCh2NameAdd" field.
  String? _burnPlasticCh2NameAdd;
  String get burnPlasticCh2NameAdd => _burnPlasticCh2NameAdd ?? '';
  bool hasBurnPlasticCh2NameAdd() => _burnPlasticCh2NameAdd != null;

  // "burnPlasticCh2Day" field.
  String? _burnPlasticCh2Day;
  String get burnPlasticCh2Day => _burnPlasticCh2Day ?? '';
  bool hasBurnPlasticCh2Day() => _burnPlasticCh2Day != null;

  // "burnPlasticCh2Time" field.
  String? _burnPlasticCh2Time;
  String get burnPlasticCh2Time => _burnPlasticCh2Time ?? '';
  bool hasBurnPlasticCh2Time() => _burnPlasticCh2Time != null;

  // "burnPlasticCh2Phone" field.
  String? _burnPlasticCh2Phone;
  String get burnPlasticCh2Phone => _burnPlasticCh2Phone ?? '';
  bool hasBurnPlasticCh2Phone() => _burnPlasticCh2Phone != null;

  void _initializeFields() {
    _burnPlasticDoctor = snapshotData['burnPlasticDoctor'] as String?;
    _burnPlasticDoctorExpt = snapshotData['burnPlasticDoctorExpt'] as String?;
    _burnPlasticDoctorEdu = snapshotData['burnPlasticDoctorEdu'] as String?;
    _burnPlasticDoctorWorkLoca =
        snapshotData['burnPlasticDoctorWorkLoca'] as String?;
    _burnPlasticDoctorPic = snapshotData['burnPlasticDoctorPic'] as String?;
    _burnPlasticDoctorTrtment =
        snapshotData['burnPlasticDoctorTrtment'] as String?;
    _burnPlasticCh1NamAdd = snapshotData['burnPlasticCh1NamAdd'] as String?;
    _burnPlasticCh1Day = snapshotData['burnPlasticCh1Day'] as String?;
    _burnPlasticCh1Time = snapshotData['burnPlasticCh1Time'] as String?;
    _burnPlasticCh1Phone = snapshotData['burnPlasticCh1Phone'] as String?;
    _burnPlasticCh2NameAdd = snapshotData['burnPlasticCh2NameAdd'] as String?;
    _burnPlasticCh2Day = snapshotData['burnPlasticCh2Day'] as String?;
    _burnPlasticCh2Time = snapshotData['burnPlasticCh2Time'] as String?;
    _burnPlasticCh2Phone = snapshotData['burnPlasticCh2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('burnPlastic');

  static Stream<BurnPlasticRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BurnPlasticRecord.fromSnapshot(s));

  static Future<BurnPlasticRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BurnPlasticRecord.fromSnapshot(s));

  static BurnPlasticRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BurnPlasticRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BurnPlasticRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BurnPlasticRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BurnPlasticRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BurnPlasticRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBurnPlasticRecordData({
  String? burnPlasticDoctor,
  String? burnPlasticDoctorExpt,
  String? burnPlasticDoctorEdu,
  String? burnPlasticDoctorWorkLoca,
  String? burnPlasticDoctorPic,
  String? burnPlasticDoctorTrtment,
  String? burnPlasticCh1NamAdd,
  String? burnPlasticCh1Day,
  String? burnPlasticCh1Time,
  String? burnPlasticCh1Phone,
  String? burnPlasticCh2NameAdd,
  String? burnPlasticCh2Day,
  String? burnPlasticCh2Time,
  String? burnPlasticCh2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'burnPlasticDoctor': burnPlasticDoctor,
      'burnPlasticDoctorExpt': burnPlasticDoctorExpt,
      'burnPlasticDoctorEdu': burnPlasticDoctorEdu,
      'burnPlasticDoctorWorkLoca': burnPlasticDoctorWorkLoca,
      'burnPlasticDoctorPic': burnPlasticDoctorPic,
      'burnPlasticDoctorTrtment': burnPlasticDoctorTrtment,
      'burnPlasticCh1NamAdd': burnPlasticCh1NamAdd,
      'burnPlasticCh1Day': burnPlasticCh1Day,
      'burnPlasticCh1Time': burnPlasticCh1Time,
      'burnPlasticCh1Phone': burnPlasticCh1Phone,
      'burnPlasticCh2NameAdd': burnPlasticCh2NameAdd,
      'burnPlasticCh2Day': burnPlasticCh2Day,
      'burnPlasticCh2Time': burnPlasticCh2Time,
      'burnPlasticCh2Phone': burnPlasticCh2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class BurnPlasticRecordDocumentEquality implements Equality<BurnPlasticRecord> {
  const BurnPlasticRecordDocumentEquality();

  @override
  bool equals(BurnPlasticRecord? e1, BurnPlasticRecord? e2) {
    return e1?.burnPlasticDoctor == e2?.burnPlasticDoctor &&
        e1?.burnPlasticDoctorExpt == e2?.burnPlasticDoctorExpt &&
        e1?.burnPlasticDoctorEdu == e2?.burnPlasticDoctorEdu &&
        e1?.burnPlasticDoctorWorkLoca == e2?.burnPlasticDoctorWorkLoca &&
        e1?.burnPlasticDoctorPic == e2?.burnPlasticDoctorPic &&
        e1?.burnPlasticDoctorTrtment == e2?.burnPlasticDoctorTrtment &&
        e1?.burnPlasticCh1NamAdd == e2?.burnPlasticCh1NamAdd &&
        e1?.burnPlasticCh1Day == e2?.burnPlasticCh1Day &&
        e1?.burnPlasticCh1Time == e2?.burnPlasticCh1Time &&
        e1?.burnPlasticCh1Phone == e2?.burnPlasticCh1Phone &&
        e1?.burnPlasticCh2NameAdd == e2?.burnPlasticCh2NameAdd &&
        e1?.burnPlasticCh2Day == e2?.burnPlasticCh2Day &&
        e1?.burnPlasticCh2Time == e2?.burnPlasticCh2Time &&
        e1?.burnPlasticCh2Phone == e2?.burnPlasticCh2Phone;
  }

  @override
  int hash(BurnPlasticRecord? e) => const ListEquality().hash([
        e?.burnPlasticDoctor,
        e?.burnPlasticDoctorExpt,
        e?.burnPlasticDoctorEdu,
        e?.burnPlasticDoctorWorkLoca,
        e?.burnPlasticDoctorPic,
        e?.burnPlasticDoctorTrtment,
        e?.burnPlasticCh1NamAdd,
        e?.burnPlasticCh1Day,
        e?.burnPlasticCh1Time,
        e?.burnPlasticCh1Phone,
        e?.burnPlasticCh2NameAdd,
        e?.burnPlasticCh2Day,
        e?.burnPlasticCh2Time,
        e?.burnPlasticCh2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is BurnPlasticRecord;
}
