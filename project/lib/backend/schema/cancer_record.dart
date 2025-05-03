import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CancerRecord extends FirestoreRecord {
  CancerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cancerDoctor" field.
  String? _cancerDoctor;
  String get cancerDoctor => _cancerDoctor ?? '';
  bool hasCancerDoctor() => _cancerDoctor != null;

  // "cancerDoctExpt" field.
  String? _cancerDoctExpt;
  String get cancerDoctExpt => _cancerDoctExpt ?? '';
  bool hasCancerDoctExpt() => _cancerDoctExpt != null;

  // "cancerDoctEdu" field.
  String? _cancerDoctEdu;
  String get cancerDoctEdu => _cancerDoctEdu ?? '';
  bool hasCancerDoctEdu() => _cancerDoctEdu != null;

  // "cancerDoctWorkLoca" field.
  String? _cancerDoctWorkLoca;
  String get cancerDoctWorkLoca => _cancerDoctWorkLoca ?? '';
  bool hasCancerDoctWorkLoca() => _cancerDoctWorkLoca != null;

  // "cancerDoctTrtment" field.
  String? _cancerDoctTrtment;
  String get cancerDoctTrtment => _cancerDoctTrtment ?? '';
  bool hasCancerDoctTrtment() => _cancerDoctTrtment != null;

  // "cancerCh1NameAdd" field.
  String? _cancerCh1NameAdd;
  String get cancerCh1NameAdd => _cancerCh1NameAdd ?? '';
  bool hasCancerCh1NameAdd() => _cancerCh1NameAdd != null;

  // "cancerCh1Day" field.
  String? _cancerCh1Day;
  String get cancerCh1Day => _cancerCh1Day ?? '';
  bool hasCancerCh1Day() => _cancerCh1Day != null;

  // "cancerCh1Time" field.
  String? _cancerCh1Time;
  String get cancerCh1Time => _cancerCh1Time ?? '';
  bool hasCancerCh1Time() => _cancerCh1Time != null;

  // "cancerCh1Phone" field.
  String? _cancerCh1Phone;
  String get cancerCh1Phone => _cancerCh1Phone ?? '';
  bool hasCancerCh1Phone() => _cancerCh1Phone != null;

  // "cancerCh2NameAdd" field.
  String? _cancerCh2NameAdd;
  String get cancerCh2NameAdd => _cancerCh2NameAdd ?? '';
  bool hasCancerCh2NameAdd() => _cancerCh2NameAdd != null;

  // "cancerCh2Day" field.
  String? _cancerCh2Day;
  String get cancerCh2Day => _cancerCh2Day ?? '';
  bool hasCancerCh2Day() => _cancerCh2Day != null;

  // "cancerCh2Time" field.
  String? _cancerCh2Time;
  String get cancerCh2Time => _cancerCh2Time ?? '';
  bool hasCancerCh2Time() => _cancerCh2Time != null;

  // "cancerCh2Phone" field.
  String? _cancerCh2Phone;
  String get cancerCh2Phone => _cancerCh2Phone ?? '';
  bool hasCancerCh2Phone() => _cancerCh2Phone != null;

  // "cancerDoctPic" field.
  String? _cancerDoctPic;
  String get cancerDoctPic => _cancerDoctPic ?? '';
  bool hasCancerDoctPic() => _cancerDoctPic != null;

  void _initializeFields() {
    _cancerDoctor = snapshotData['cancerDoctor'] as String?;
    _cancerDoctExpt = snapshotData['cancerDoctExpt'] as String?;
    _cancerDoctEdu = snapshotData['cancerDoctEdu'] as String?;
    _cancerDoctWorkLoca = snapshotData['cancerDoctWorkLoca'] as String?;
    _cancerDoctTrtment = snapshotData['cancerDoctTrtment'] as String?;
    _cancerCh1NameAdd = snapshotData['cancerCh1NameAdd'] as String?;
    _cancerCh1Day = snapshotData['cancerCh1Day'] as String?;
    _cancerCh1Time = snapshotData['cancerCh1Time'] as String?;
    _cancerCh1Phone = snapshotData['cancerCh1Phone'] as String?;
    _cancerCh2NameAdd = snapshotData['cancerCh2NameAdd'] as String?;
    _cancerCh2Day = snapshotData['cancerCh2Day'] as String?;
    _cancerCh2Time = snapshotData['cancerCh2Time'] as String?;
    _cancerCh2Phone = snapshotData['cancerCh2Phone'] as String?;
    _cancerDoctPic = snapshotData['cancerDoctPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cancer');

  static Stream<CancerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CancerRecord.fromSnapshot(s));

  static Future<CancerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CancerRecord.fromSnapshot(s));

  static CancerRecord fromSnapshot(DocumentSnapshot snapshot) => CancerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CancerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CancerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CancerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CancerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCancerRecordData({
  String? cancerDoctor,
  String? cancerDoctExpt,
  String? cancerDoctEdu,
  String? cancerDoctWorkLoca,
  String? cancerDoctTrtment,
  String? cancerCh1NameAdd,
  String? cancerCh1Day,
  String? cancerCh1Time,
  String? cancerCh1Phone,
  String? cancerCh2NameAdd,
  String? cancerCh2Day,
  String? cancerCh2Time,
  String? cancerCh2Phone,
  String? cancerDoctPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cancerDoctor': cancerDoctor,
      'cancerDoctExpt': cancerDoctExpt,
      'cancerDoctEdu': cancerDoctEdu,
      'cancerDoctWorkLoca': cancerDoctWorkLoca,
      'cancerDoctTrtment': cancerDoctTrtment,
      'cancerCh1NameAdd': cancerCh1NameAdd,
      'cancerCh1Day': cancerCh1Day,
      'cancerCh1Time': cancerCh1Time,
      'cancerCh1Phone': cancerCh1Phone,
      'cancerCh2NameAdd': cancerCh2NameAdd,
      'cancerCh2Day': cancerCh2Day,
      'cancerCh2Time': cancerCh2Time,
      'cancerCh2Phone': cancerCh2Phone,
      'cancerDoctPic': cancerDoctPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class CancerRecordDocumentEquality implements Equality<CancerRecord> {
  const CancerRecordDocumentEquality();

  @override
  bool equals(CancerRecord? e1, CancerRecord? e2) {
    return e1?.cancerDoctor == e2?.cancerDoctor &&
        e1?.cancerDoctExpt == e2?.cancerDoctExpt &&
        e1?.cancerDoctEdu == e2?.cancerDoctEdu &&
        e1?.cancerDoctWorkLoca == e2?.cancerDoctWorkLoca &&
        e1?.cancerDoctTrtment == e2?.cancerDoctTrtment &&
        e1?.cancerCh1NameAdd == e2?.cancerCh1NameAdd &&
        e1?.cancerCh1Day == e2?.cancerCh1Day &&
        e1?.cancerCh1Time == e2?.cancerCh1Time &&
        e1?.cancerCh1Phone == e2?.cancerCh1Phone &&
        e1?.cancerCh2NameAdd == e2?.cancerCh2NameAdd &&
        e1?.cancerCh2Day == e2?.cancerCh2Day &&
        e1?.cancerCh2Time == e2?.cancerCh2Time &&
        e1?.cancerCh2Phone == e2?.cancerCh2Phone &&
        e1?.cancerDoctPic == e2?.cancerDoctPic;
  }

  @override
  int hash(CancerRecord? e) => const ListEquality().hash([
        e?.cancerDoctor,
        e?.cancerDoctExpt,
        e?.cancerDoctEdu,
        e?.cancerDoctWorkLoca,
        e?.cancerDoctTrtment,
        e?.cancerCh1NameAdd,
        e?.cancerCh1Day,
        e?.cancerCh1Time,
        e?.cancerCh1Phone,
        e?.cancerCh2NameAdd,
        e?.cancerCh2Day,
        e?.cancerCh2Time,
        e?.cancerCh2Phone,
        e?.cancerDoctPic
      ]);

  @override
  bool isValidKey(Object? o) => o is CancerRecord;
}
