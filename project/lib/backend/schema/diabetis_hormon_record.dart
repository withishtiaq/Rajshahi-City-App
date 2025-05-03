import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiabetisHormonRecord extends FirestoreRecord {
  DiabetisHormonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "diabetisDoctor" field.
  String? _diabetisDoctor;
  String get diabetisDoctor => _diabetisDoctor ?? '';
  bool hasDiabetisDoctor() => _diabetisDoctor != null;

  // "diabetisDoctExpt" field.
  String? _diabetisDoctExpt;
  String get diabetisDoctExpt => _diabetisDoctExpt ?? '';
  bool hasDiabetisDoctExpt() => _diabetisDoctExpt != null;

  // "diabetisDoctEduca" field.
  String? _diabetisDoctEduca;
  String get diabetisDoctEduca => _diabetisDoctEduca ?? '';
  bool hasDiabetisDoctEduca() => _diabetisDoctEduca != null;

  // "diabetisDoctWorkLoca" field.
  String? _diabetisDoctWorkLoca;
  String get diabetisDoctWorkLoca => _diabetisDoctWorkLoca ?? '';
  bool hasDiabetisDoctWorkLoca() => _diabetisDoctWorkLoca != null;

  // "diabetisDoctTrtment" field.
  String? _diabetisDoctTrtment;
  String get diabetisDoctTrtment => _diabetisDoctTrtment ?? '';
  bool hasDiabetisDoctTrtment() => _diabetisDoctTrtment != null;

  // "diabetisCh1NameAdd" field.
  String? _diabetisCh1NameAdd;
  String get diabetisCh1NameAdd => _diabetisCh1NameAdd ?? '';
  bool hasDiabetisCh1NameAdd() => _diabetisCh1NameAdd != null;

  // "diabetisCh1Day" field.
  String? _diabetisCh1Day;
  String get diabetisCh1Day => _diabetisCh1Day ?? '';
  bool hasDiabetisCh1Day() => _diabetisCh1Day != null;

  // "diabetisCh1Time" field.
  String? _diabetisCh1Time;
  String get diabetisCh1Time => _diabetisCh1Time ?? '';
  bool hasDiabetisCh1Time() => _diabetisCh1Time != null;

  // "diabetisCh1Phone" field.
  String? _diabetisCh1Phone;
  String get diabetisCh1Phone => _diabetisCh1Phone ?? '';
  bool hasDiabetisCh1Phone() => _diabetisCh1Phone != null;

  // "diabetisCh2NameAdd" field.
  String? _diabetisCh2NameAdd;
  String get diabetisCh2NameAdd => _diabetisCh2NameAdd ?? '';
  bool hasDiabetisCh2NameAdd() => _diabetisCh2NameAdd != null;

  // "diabetisCh2Day" field.
  String? _diabetisCh2Day;
  String get diabetisCh2Day => _diabetisCh2Day ?? '';
  bool hasDiabetisCh2Day() => _diabetisCh2Day != null;

  // "diabetisCh2Time" field.
  String? _diabetisCh2Time;
  String get diabetisCh2Time => _diabetisCh2Time ?? '';
  bool hasDiabetisCh2Time() => _diabetisCh2Time != null;

  // "diabetisCh2Phone" field.
  String? _diabetisCh2Phone;
  String get diabetisCh2Phone => _diabetisCh2Phone ?? '';
  bool hasDiabetisCh2Phone() => _diabetisCh2Phone != null;

  // "diabetisDoctPic" field.
  String? _diabetisDoctPic;
  String get diabetisDoctPic => _diabetisDoctPic ?? '';
  bool hasDiabetisDoctPic() => _diabetisDoctPic != null;

  void _initializeFields() {
    _diabetisDoctor = snapshotData['diabetisDoctor'] as String?;
    _diabetisDoctExpt = snapshotData['diabetisDoctExpt'] as String?;
    _diabetisDoctEduca = snapshotData['diabetisDoctEduca'] as String?;
    _diabetisDoctWorkLoca = snapshotData['diabetisDoctWorkLoca'] as String?;
    _diabetisDoctTrtment = snapshotData['diabetisDoctTrtment'] as String?;
    _diabetisCh1NameAdd = snapshotData['diabetisCh1NameAdd'] as String?;
    _diabetisCh1Day = snapshotData['diabetisCh1Day'] as String?;
    _diabetisCh1Time = snapshotData['diabetisCh1Time'] as String?;
    _diabetisCh1Phone = snapshotData['diabetisCh1Phone'] as String?;
    _diabetisCh2NameAdd = snapshotData['diabetisCh2NameAdd'] as String?;
    _diabetisCh2Day = snapshotData['diabetisCh2Day'] as String?;
    _diabetisCh2Time = snapshotData['diabetisCh2Time'] as String?;
    _diabetisCh2Phone = snapshotData['diabetisCh2Phone'] as String?;
    _diabetisDoctPic = snapshotData['diabetisDoctPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diabetisHormon');

  static Stream<DiabetisHormonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiabetisHormonRecord.fromSnapshot(s));

  static Future<DiabetisHormonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiabetisHormonRecord.fromSnapshot(s));

  static DiabetisHormonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiabetisHormonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiabetisHormonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiabetisHormonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiabetisHormonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiabetisHormonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiabetisHormonRecordData({
  String? diabetisDoctor,
  String? diabetisDoctExpt,
  String? diabetisDoctEduca,
  String? diabetisDoctWorkLoca,
  String? diabetisDoctTrtment,
  String? diabetisCh1NameAdd,
  String? diabetisCh1Day,
  String? diabetisCh1Time,
  String? diabetisCh1Phone,
  String? diabetisCh2NameAdd,
  String? diabetisCh2Day,
  String? diabetisCh2Time,
  String? diabetisCh2Phone,
  String? diabetisDoctPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'diabetisDoctor': diabetisDoctor,
      'diabetisDoctExpt': diabetisDoctExpt,
      'diabetisDoctEduca': diabetisDoctEduca,
      'diabetisDoctWorkLoca': diabetisDoctWorkLoca,
      'diabetisDoctTrtment': diabetisDoctTrtment,
      'diabetisCh1NameAdd': diabetisCh1NameAdd,
      'diabetisCh1Day': diabetisCh1Day,
      'diabetisCh1Time': diabetisCh1Time,
      'diabetisCh1Phone': diabetisCh1Phone,
      'diabetisCh2NameAdd': diabetisCh2NameAdd,
      'diabetisCh2Day': diabetisCh2Day,
      'diabetisCh2Time': diabetisCh2Time,
      'diabetisCh2Phone': diabetisCh2Phone,
      'diabetisDoctPic': diabetisDoctPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiabetisHormonRecordDocumentEquality
    implements Equality<DiabetisHormonRecord> {
  const DiabetisHormonRecordDocumentEquality();

  @override
  bool equals(DiabetisHormonRecord? e1, DiabetisHormonRecord? e2) {
    return e1?.diabetisDoctor == e2?.diabetisDoctor &&
        e1?.diabetisDoctExpt == e2?.diabetisDoctExpt &&
        e1?.diabetisDoctEduca == e2?.diabetisDoctEduca &&
        e1?.diabetisDoctWorkLoca == e2?.diabetisDoctWorkLoca &&
        e1?.diabetisDoctTrtment == e2?.diabetisDoctTrtment &&
        e1?.diabetisCh1NameAdd == e2?.diabetisCh1NameAdd &&
        e1?.diabetisCh1Day == e2?.diabetisCh1Day &&
        e1?.diabetisCh1Time == e2?.diabetisCh1Time &&
        e1?.diabetisCh1Phone == e2?.diabetisCh1Phone &&
        e1?.diabetisCh2NameAdd == e2?.diabetisCh2NameAdd &&
        e1?.diabetisCh2Day == e2?.diabetisCh2Day &&
        e1?.diabetisCh2Time == e2?.diabetisCh2Time &&
        e1?.diabetisCh2Phone == e2?.diabetisCh2Phone &&
        e1?.diabetisDoctPic == e2?.diabetisDoctPic;
  }

  @override
  int hash(DiabetisHormonRecord? e) => const ListEquality().hash([
        e?.diabetisDoctor,
        e?.diabetisDoctExpt,
        e?.diabetisDoctEduca,
        e?.diabetisDoctWorkLoca,
        e?.diabetisDoctTrtment,
        e?.diabetisCh1NameAdd,
        e?.diabetisCh1Day,
        e?.diabetisCh1Time,
        e?.diabetisCh1Phone,
        e?.diabetisCh2NameAdd,
        e?.diabetisCh2Day,
        e?.diabetisCh2Time,
        e?.diabetisCh2Phone,
        e?.diabetisDoctPic
      ]);

  @override
  bool isValidKey(Object? o) => o is DiabetisHormonRecord;
}
