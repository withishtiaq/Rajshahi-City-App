import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeopathiRecord extends FirestoreRecord {
  HomeopathiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "homeopathiDoctor" field.
  String? _homeopathiDoctor;
  String get homeopathiDoctor => _homeopathiDoctor ?? '';
  bool hasHomeopathiDoctor() => _homeopathiDoctor != null;

  // "homeopathiDoctorExpt" field.
  String? _homeopathiDoctorExpt;
  String get homeopathiDoctorExpt => _homeopathiDoctorExpt ?? '';
  bool hasHomeopathiDoctorExpt() => _homeopathiDoctorExpt != null;

  // "homeopathiDoctorEduca" field.
  String? _homeopathiDoctorEduca;
  String get homeopathiDoctorEduca => _homeopathiDoctorEduca ?? '';
  bool hasHomeopathiDoctorEduca() => _homeopathiDoctorEduca != null;

  // "homeopathiDoctorWorkLoca" field.
  String? _homeopathiDoctorWorkLoca;
  String get homeopathiDoctorWorkLoca => _homeopathiDoctorWorkLoca ?? '';
  bool hasHomeopathiDoctorWorkLoca() => _homeopathiDoctorWorkLoca != null;

  // "homeopathiDoctTrtment" field.
  String? _homeopathiDoctTrtment;
  String get homeopathiDoctTrtment => _homeopathiDoctTrtment ?? '';
  bool hasHomeopathiDoctTrtment() => _homeopathiDoctTrtment != null;

  // "homeopathiCh1NameAdd" field.
  String? _homeopathiCh1NameAdd;
  String get homeopathiCh1NameAdd => _homeopathiCh1NameAdd ?? '';
  bool hasHomeopathiCh1NameAdd() => _homeopathiCh1NameAdd != null;

  // "homeopathiCh1Day" field.
  String? _homeopathiCh1Day;
  String get homeopathiCh1Day => _homeopathiCh1Day ?? '';
  bool hasHomeopathiCh1Day() => _homeopathiCh1Day != null;

  // "homeopatthiCh1Time" field.
  String? _homeopatthiCh1Time;
  String get homeopatthiCh1Time => _homeopatthiCh1Time ?? '';
  bool hasHomeopatthiCh1Time() => _homeopatthiCh1Time != null;

  // "homeopathiCh1Phone" field.
  String? _homeopathiCh1Phone;
  String get homeopathiCh1Phone => _homeopathiCh1Phone ?? '';
  bool hasHomeopathiCh1Phone() => _homeopathiCh1Phone != null;

  // "homepathiCh2NameAdd" field.
  String? _homepathiCh2NameAdd;
  String get homepathiCh2NameAdd => _homepathiCh2NameAdd ?? '';
  bool hasHomepathiCh2NameAdd() => _homepathiCh2NameAdd != null;

  // "homeopathiCh2Day" field.
  String? _homeopathiCh2Day;
  String get homeopathiCh2Day => _homeopathiCh2Day ?? '';
  bool hasHomeopathiCh2Day() => _homeopathiCh2Day != null;

  // "homeopathiCh2Time" field.
  String? _homeopathiCh2Time;
  String get homeopathiCh2Time => _homeopathiCh2Time ?? '';
  bool hasHomeopathiCh2Time() => _homeopathiCh2Time != null;

  // "homeopathiCh2Phone" field.
  String? _homeopathiCh2Phone;
  String get homeopathiCh2Phone => _homeopathiCh2Phone ?? '';
  bool hasHomeopathiCh2Phone() => _homeopathiCh2Phone != null;

  // "homeopathiDoctorPic" field.
  String? _homeopathiDoctorPic;
  String get homeopathiDoctorPic => _homeopathiDoctorPic ?? '';
  bool hasHomeopathiDoctorPic() => _homeopathiDoctorPic != null;

  void _initializeFields() {
    _homeopathiDoctor = snapshotData['homeopathiDoctor'] as String?;
    _homeopathiDoctorExpt = snapshotData['homeopathiDoctorExpt'] as String?;
    _homeopathiDoctorEduca = snapshotData['homeopathiDoctorEduca'] as String?;
    _homeopathiDoctorWorkLoca =
        snapshotData['homeopathiDoctorWorkLoca'] as String?;
    _homeopathiDoctTrtment = snapshotData['homeopathiDoctTrtment'] as String?;
    _homeopathiCh1NameAdd = snapshotData['homeopathiCh1NameAdd'] as String?;
    _homeopathiCh1Day = snapshotData['homeopathiCh1Day'] as String?;
    _homeopatthiCh1Time = snapshotData['homeopatthiCh1Time'] as String?;
    _homeopathiCh1Phone = snapshotData['homeopathiCh1Phone'] as String?;
    _homepathiCh2NameAdd = snapshotData['homepathiCh2NameAdd'] as String?;
    _homeopathiCh2Day = snapshotData['homeopathiCh2Day'] as String?;
    _homeopathiCh2Time = snapshotData['homeopathiCh2Time'] as String?;
    _homeopathiCh2Phone = snapshotData['homeopathiCh2Phone'] as String?;
    _homeopathiDoctorPic = snapshotData['homeopathiDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('homeopathi');

  static Stream<HomeopathiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HomeopathiRecord.fromSnapshot(s));

  static Future<HomeopathiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HomeopathiRecord.fromSnapshot(s));

  static HomeopathiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HomeopathiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HomeopathiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HomeopathiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HomeopathiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HomeopathiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHomeopathiRecordData({
  String? homeopathiDoctor,
  String? homeopathiDoctorExpt,
  String? homeopathiDoctorEduca,
  String? homeopathiDoctorWorkLoca,
  String? homeopathiDoctTrtment,
  String? homeopathiCh1NameAdd,
  String? homeopathiCh1Day,
  String? homeopatthiCh1Time,
  String? homeopathiCh1Phone,
  String? homepathiCh2NameAdd,
  String? homeopathiCh2Day,
  String? homeopathiCh2Time,
  String? homeopathiCh2Phone,
  String? homeopathiDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'homeopathiDoctor': homeopathiDoctor,
      'homeopathiDoctorExpt': homeopathiDoctorExpt,
      'homeopathiDoctorEduca': homeopathiDoctorEduca,
      'homeopathiDoctorWorkLoca': homeopathiDoctorWorkLoca,
      'homeopathiDoctTrtment': homeopathiDoctTrtment,
      'homeopathiCh1NameAdd': homeopathiCh1NameAdd,
      'homeopathiCh1Day': homeopathiCh1Day,
      'homeopatthiCh1Time': homeopatthiCh1Time,
      'homeopathiCh1Phone': homeopathiCh1Phone,
      'homepathiCh2NameAdd': homepathiCh2NameAdd,
      'homeopathiCh2Day': homeopathiCh2Day,
      'homeopathiCh2Time': homeopathiCh2Time,
      'homeopathiCh2Phone': homeopathiCh2Phone,
      'homeopathiDoctorPic': homeopathiDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class HomeopathiRecordDocumentEquality implements Equality<HomeopathiRecord> {
  const HomeopathiRecordDocumentEquality();

  @override
  bool equals(HomeopathiRecord? e1, HomeopathiRecord? e2) {
    return e1?.homeopathiDoctor == e2?.homeopathiDoctor &&
        e1?.homeopathiDoctorExpt == e2?.homeopathiDoctorExpt &&
        e1?.homeopathiDoctorEduca == e2?.homeopathiDoctorEduca &&
        e1?.homeopathiDoctorWorkLoca == e2?.homeopathiDoctorWorkLoca &&
        e1?.homeopathiDoctTrtment == e2?.homeopathiDoctTrtment &&
        e1?.homeopathiCh1NameAdd == e2?.homeopathiCh1NameAdd &&
        e1?.homeopathiCh1Day == e2?.homeopathiCh1Day &&
        e1?.homeopatthiCh1Time == e2?.homeopatthiCh1Time &&
        e1?.homeopathiCh1Phone == e2?.homeopathiCh1Phone &&
        e1?.homepathiCh2NameAdd == e2?.homepathiCh2NameAdd &&
        e1?.homeopathiCh2Day == e2?.homeopathiCh2Day &&
        e1?.homeopathiCh2Time == e2?.homeopathiCh2Time &&
        e1?.homeopathiCh2Phone == e2?.homeopathiCh2Phone &&
        e1?.homeopathiDoctorPic == e2?.homeopathiDoctorPic;
  }

  @override
  int hash(HomeopathiRecord? e) => const ListEquality().hash([
        e?.homeopathiDoctor,
        e?.homeopathiDoctorExpt,
        e?.homeopathiDoctorEduca,
        e?.homeopathiDoctorWorkLoca,
        e?.homeopathiDoctTrtment,
        e?.homeopathiCh1NameAdd,
        e?.homeopathiCh1Day,
        e?.homeopatthiCh1Time,
        e?.homeopathiCh1Phone,
        e?.homepathiCh2NameAdd,
        e?.homeopathiCh2Day,
        e?.homeopathiCh2Time,
        e?.homeopathiCh2Phone,
        e?.homeopathiDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is HomeopathiRecord;
}
