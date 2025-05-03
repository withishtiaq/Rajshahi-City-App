import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AzmaBokkhobedhiRecord extends FirestoreRecord {
  AzmaBokkhobedhiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "azmaDoctor" field.
  String? _azmaDoctor;
  String get azmaDoctor => _azmaDoctor ?? '';
  bool hasAzmaDoctor() => _azmaDoctor != null;

  // "azmaDoctorExp" field.
  String? _azmaDoctorExp;
  String get azmaDoctorExp => _azmaDoctorExp ?? '';
  bool hasAzmaDoctorExp() => _azmaDoctorExp != null;

  // "azmaDoctorEduc" field.
  String? _azmaDoctorEduc;
  String get azmaDoctorEduc => _azmaDoctorEduc ?? '';
  bool hasAzmaDoctorEduc() => _azmaDoctorEduc != null;

  // "azmaDoctorWorkLoc" field.
  String? _azmaDoctorWorkLoc;
  String get azmaDoctorWorkLoc => _azmaDoctorWorkLoc ?? '';
  bool hasAzmaDoctorWorkLoc() => _azmaDoctorWorkLoc != null;

  // "azmaDoctorPic" field.
  String? _azmaDoctorPic;
  String get azmaDoctorPic => _azmaDoctorPic ?? '';
  bool hasAzmaDoctorPic() => _azmaDoctorPic != null;

  // "azmaDoctorTrtment" field.
  String? _azmaDoctorTrtment;
  String get azmaDoctorTrtment => _azmaDoctorTrtment ?? '';
  bool hasAzmaDoctorTrtment() => _azmaDoctorTrtment != null;

  // "azmaCh1NameAdd" field.
  String? _azmaCh1NameAdd;
  String get azmaCh1NameAdd => _azmaCh1NameAdd ?? '';
  bool hasAzmaCh1NameAdd() => _azmaCh1NameAdd != null;

  // "azmaCh1Day" field.
  String? _azmaCh1Day;
  String get azmaCh1Day => _azmaCh1Day ?? '';
  bool hasAzmaCh1Day() => _azmaCh1Day != null;

  // "azmaCh1Time" field.
  String? _azmaCh1Time;
  String get azmaCh1Time => _azmaCh1Time ?? '';
  bool hasAzmaCh1Time() => _azmaCh1Time != null;

  // "azmaCh1Phone" field.
  String? _azmaCh1Phone;
  String get azmaCh1Phone => _azmaCh1Phone ?? '';
  bool hasAzmaCh1Phone() => _azmaCh1Phone != null;

  // "azmaCh2NameAdd" field.
  String? _azmaCh2NameAdd;
  String get azmaCh2NameAdd => _azmaCh2NameAdd ?? '';
  bool hasAzmaCh2NameAdd() => _azmaCh2NameAdd != null;

  // "azmaCh2Day" field.
  String? _azmaCh2Day;
  String get azmaCh2Day => _azmaCh2Day ?? '';
  bool hasAzmaCh2Day() => _azmaCh2Day != null;

  // "azmaCh2Time" field.
  String? _azmaCh2Time;
  String get azmaCh2Time => _azmaCh2Time ?? '';
  bool hasAzmaCh2Time() => _azmaCh2Time != null;

  // "azmaCh2Phone" field.
  String? _azmaCh2Phone;
  String get azmaCh2Phone => _azmaCh2Phone ?? '';
  bool hasAzmaCh2Phone() => _azmaCh2Phone != null;

  void _initializeFields() {
    _azmaDoctor = snapshotData['azmaDoctor'] as String?;
    _azmaDoctorExp = snapshotData['azmaDoctorExp'] as String?;
    _azmaDoctorEduc = snapshotData['azmaDoctorEduc'] as String?;
    _azmaDoctorWorkLoc = snapshotData['azmaDoctorWorkLoc'] as String?;
    _azmaDoctorPic = snapshotData['azmaDoctorPic'] as String?;
    _azmaDoctorTrtment = snapshotData['azmaDoctorTrtment'] as String?;
    _azmaCh1NameAdd = snapshotData['azmaCh1NameAdd'] as String?;
    _azmaCh1Day = snapshotData['azmaCh1Day'] as String?;
    _azmaCh1Time = snapshotData['azmaCh1Time'] as String?;
    _azmaCh1Phone = snapshotData['azmaCh1Phone'] as String?;
    _azmaCh2NameAdd = snapshotData['azmaCh2NameAdd'] as String?;
    _azmaCh2Day = snapshotData['azmaCh2Day'] as String?;
    _azmaCh2Time = snapshotData['azmaCh2Time'] as String?;
    _azmaCh2Phone = snapshotData['azmaCh2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('azmaBokkhobedhi');

  static Stream<AzmaBokkhobedhiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AzmaBokkhobedhiRecord.fromSnapshot(s));

  static Future<AzmaBokkhobedhiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AzmaBokkhobedhiRecord.fromSnapshot(s));

  static AzmaBokkhobedhiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AzmaBokkhobedhiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AzmaBokkhobedhiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AzmaBokkhobedhiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AzmaBokkhobedhiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AzmaBokkhobedhiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAzmaBokkhobedhiRecordData({
  String? azmaDoctor,
  String? azmaDoctorExp,
  String? azmaDoctorEduc,
  String? azmaDoctorWorkLoc,
  String? azmaDoctorPic,
  String? azmaDoctorTrtment,
  String? azmaCh1NameAdd,
  String? azmaCh1Day,
  String? azmaCh1Time,
  String? azmaCh1Phone,
  String? azmaCh2NameAdd,
  String? azmaCh2Day,
  String? azmaCh2Time,
  String? azmaCh2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'azmaDoctor': azmaDoctor,
      'azmaDoctorExp': azmaDoctorExp,
      'azmaDoctorEduc': azmaDoctorEduc,
      'azmaDoctorWorkLoc': azmaDoctorWorkLoc,
      'azmaDoctorPic': azmaDoctorPic,
      'azmaDoctorTrtment': azmaDoctorTrtment,
      'azmaCh1NameAdd': azmaCh1NameAdd,
      'azmaCh1Day': azmaCh1Day,
      'azmaCh1Time': azmaCh1Time,
      'azmaCh1Phone': azmaCh1Phone,
      'azmaCh2NameAdd': azmaCh2NameAdd,
      'azmaCh2Day': azmaCh2Day,
      'azmaCh2Time': azmaCh2Time,
      'azmaCh2Phone': azmaCh2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class AzmaBokkhobedhiRecordDocumentEquality
    implements Equality<AzmaBokkhobedhiRecord> {
  const AzmaBokkhobedhiRecordDocumentEquality();

  @override
  bool equals(AzmaBokkhobedhiRecord? e1, AzmaBokkhobedhiRecord? e2) {
    return e1?.azmaDoctor == e2?.azmaDoctor &&
        e1?.azmaDoctorExp == e2?.azmaDoctorExp &&
        e1?.azmaDoctorEduc == e2?.azmaDoctorEduc &&
        e1?.azmaDoctorWorkLoc == e2?.azmaDoctorWorkLoc &&
        e1?.azmaDoctorPic == e2?.azmaDoctorPic &&
        e1?.azmaDoctorTrtment == e2?.azmaDoctorTrtment &&
        e1?.azmaCh1NameAdd == e2?.azmaCh1NameAdd &&
        e1?.azmaCh1Day == e2?.azmaCh1Day &&
        e1?.azmaCh1Time == e2?.azmaCh1Time &&
        e1?.azmaCh1Phone == e2?.azmaCh1Phone &&
        e1?.azmaCh2NameAdd == e2?.azmaCh2NameAdd &&
        e1?.azmaCh2Day == e2?.azmaCh2Day &&
        e1?.azmaCh2Time == e2?.azmaCh2Time &&
        e1?.azmaCh2Phone == e2?.azmaCh2Phone;
  }

  @override
  int hash(AzmaBokkhobedhiRecord? e) => const ListEquality().hash([
        e?.azmaDoctor,
        e?.azmaDoctorExp,
        e?.azmaDoctorEduc,
        e?.azmaDoctorWorkLoc,
        e?.azmaDoctorPic,
        e?.azmaDoctorTrtment,
        e?.azmaCh1NameAdd,
        e?.azmaCh1Day,
        e?.azmaCh1Time,
        e?.azmaCh1Phone,
        e?.azmaCh2NameAdd,
        e?.azmaCh2Day,
        e?.azmaCh2Time,
        e?.azmaCh2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is AzmaBokkhobedhiRecord;
}
