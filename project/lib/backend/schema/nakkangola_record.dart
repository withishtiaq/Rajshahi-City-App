import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NakkangolaRecord extends FirestoreRecord {
  NakkangolaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nakgolaDoctor" field.
  String? _nakgolaDoctor;
  String get nakgolaDoctor => _nakgolaDoctor ?? '';
  bool hasNakgolaDoctor() => _nakgolaDoctor != null;

  // "nakgolaDoctorExprt" field.
  String? _nakgolaDoctorExprt;
  String get nakgolaDoctorExprt => _nakgolaDoctorExprt ?? '';
  bool hasNakgolaDoctorExprt() => _nakgolaDoctorExprt != null;

  // "nakgolaDoctorEduca" field.
  String? _nakgolaDoctorEduca;
  String get nakgolaDoctorEduca => _nakgolaDoctorEduca ?? '';
  bool hasNakgolaDoctorEduca() => _nakgolaDoctorEduca != null;

  // "nakgolaDoctorWorkLoca" field.
  String? _nakgolaDoctorWorkLoca;
  String get nakgolaDoctorWorkLoca => _nakgolaDoctorWorkLoca ?? '';
  bool hasNakgolaDoctorWorkLoca() => _nakgolaDoctorWorkLoca != null;

  // "nakgolaDoctorTrtment" field.
  String? _nakgolaDoctorTrtment;
  String get nakgolaDoctorTrtment => _nakgolaDoctorTrtment ?? '';
  bool hasNakgolaDoctorTrtment() => _nakgolaDoctorTrtment != null;

  // "nakgolaCh1NameAdd" field.
  String? _nakgolaCh1NameAdd;
  String get nakgolaCh1NameAdd => _nakgolaCh1NameAdd ?? '';
  bool hasNakgolaCh1NameAdd() => _nakgolaCh1NameAdd != null;

  // "nakgolaCh1Day" field.
  String? _nakgolaCh1Day;
  String get nakgolaCh1Day => _nakgolaCh1Day ?? '';
  bool hasNakgolaCh1Day() => _nakgolaCh1Day != null;

  // "nakgolaCh1Time" field.
  String? _nakgolaCh1Time;
  String get nakgolaCh1Time => _nakgolaCh1Time ?? '';
  bool hasNakgolaCh1Time() => _nakgolaCh1Time != null;

  // "nakgolaCh1Phone" field.
  String? _nakgolaCh1Phone;
  String get nakgolaCh1Phone => _nakgolaCh1Phone ?? '';
  bool hasNakgolaCh1Phone() => _nakgolaCh1Phone != null;

  // "nakgolaCh2NameAdd" field.
  String? _nakgolaCh2NameAdd;
  String get nakgolaCh2NameAdd => _nakgolaCh2NameAdd ?? '';
  bool hasNakgolaCh2NameAdd() => _nakgolaCh2NameAdd != null;

  // "nakgolaCh2Day" field.
  String? _nakgolaCh2Day;
  String get nakgolaCh2Day => _nakgolaCh2Day ?? '';
  bool hasNakgolaCh2Day() => _nakgolaCh2Day != null;

  // "nakgolaCh2Time" field.
  String? _nakgolaCh2Time;
  String get nakgolaCh2Time => _nakgolaCh2Time ?? '';
  bool hasNakgolaCh2Time() => _nakgolaCh2Time != null;

  // "nakgolaCh2Phone" field.
  String? _nakgolaCh2Phone;
  String get nakgolaCh2Phone => _nakgolaCh2Phone ?? '';
  bool hasNakgolaCh2Phone() => _nakgolaCh2Phone != null;

  // "nakgolaDoctorPic" field.
  String? _nakgolaDoctorPic;
  String get nakgolaDoctorPic => _nakgolaDoctorPic ?? '';
  bool hasNakgolaDoctorPic() => _nakgolaDoctorPic != null;

  void _initializeFields() {
    _nakgolaDoctor = snapshotData['nakgolaDoctor'] as String?;
    _nakgolaDoctorExprt = snapshotData['nakgolaDoctorExprt'] as String?;
    _nakgolaDoctorEduca = snapshotData['nakgolaDoctorEduca'] as String?;
    _nakgolaDoctorWorkLoca = snapshotData['nakgolaDoctorWorkLoca'] as String?;
    _nakgolaDoctorTrtment = snapshotData['nakgolaDoctorTrtment'] as String?;
    _nakgolaCh1NameAdd = snapshotData['nakgolaCh1NameAdd'] as String?;
    _nakgolaCh1Day = snapshotData['nakgolaCh1Day'] as String?;
    _nakgolaCh1Time = snapshotData['nakgolaCh1Time'] as String?;
    _nakgolaCh1Phone = snapshotData['nakgolaCh1Phone'] as String?;
    _nakgolaCh2NameAdd = snapshotData['nakgolaCh2NameAdd'] as String?;
    _nakgolaCh2Day = snapshotData['nakgolaCh2Day'] as String?;
    _nakgolaCh2Time = snapshotData['nakgolaCh2Time'] as String?;
    _nakgolaCh2Phone = snapshotData['nakgolaCh2Phone'] as String?;
    _nakgolaDoctorPic = snapshotData['nakgolaDoctorPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nakkangola');

  static Stream<NakkangolaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NakkangolaRecord.fromSnapshot(s));

  static Future<NakkangolaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NakkangolaRecord.fromSnapshot(s));

  static NakkangolaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NakkangolaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NakkangolaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NakkangolaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NakkangolaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NakkangolaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNakkangolaRecordData({
  String? nakgolaDoctor,
  String? nakgolaDoctorExprt,
  String? nakgolaDoctorEduca,
  String? nakgolaDoctorWorkLoca,
  String? nakgolaDoctorTrtment,
  String? nakgolaCh1NameAdd,
  String? nakgolaCh1Day,
  String? nakgolaCh1Time,
  String? nakgolaCh1Phone,
  String? nakgolaCh2NameAdd,
  String? nakgolaCh2Day,
  String? nakgolaCh2Time,
  String? nakgolaCh2Phone,
  String? nakgolaDoctorPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nakgolaDoctor': nakgolaDoctor,
      'nakgolaDoctorExprt': nakgolaDoctorExprt,
      'nakgolaDoctorEduca': nakgolaDoctorEduca,
      'nakgolaDoctorWorkLoca': nakgolaDoctorWorkLoca,
      'nakgolaDoctorTrtment': nakgolaDoctorTrtment,
      'nakgolaCh1NameAdd': nakgolaCh1NameAdd,
      'nakgolaCh1Day': nakgolaCh1Day,
      'nakgolaCh1Time': nakgolaCh1Time,
      'nakgolaCh1Phone': nakgolaCh1Phone,
      'nakgolaCh2NameAdd': nakgolaCh2NameAdd,
      'nakgolaCh2Day': nakgolaCh2Day,
      'nakgolaCh2Time': nakgolaCh2Time,
      'nakgolaCh2Phone': nakgolaCh2Phone,
      'nakgolaDoctorPic': nakgolaDoctorPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class NakkangolaRecordDocumentEquality implements Equality<NakkangolaRecord> {
  const NakkangolaRecordDocumentEquality();

  @override
  bool equals(NakkangolaRecord? e1, NakkangolaRecord? e2) {
    return e1?.nakgolaDoctor == e2?.nakgolaDoctor &&
        e1?.nakgolaDoctorExprt == e2?.nakgolaDoctorExprt &&
        e1?.nakgolaDoctorEduca == e2?.nakgolaDoctorEduca &&
        e1?.nakgolaDoctorWorkLoca == e2?.nakgolaDoctorWorkLoca &&
        e1?.nakgolaDoctorTrtment == e2?.nakgolaDoctorTrtment &&
        e1?.nakgolaCh1NameAdd == e2?.nakgolaCh1NameAdd &&
        e1?.nakgolaCh1Day == e2?.nakgolaCh1Day &&
        e1?.nakgolaCh1Time == e2?.nakgolaCh1Time &&
        e1?.nakgolaCh1Phone == e2?.nakgolaCh1Phone &&
        e1?.nakgolaCh2NameAdd == e2?.nakgolaCh2NameAdd &&
        e1?.nakgolaCh2Day == e2?.nakgolaCh2Day &&
        e1?.nakgolaCh2Time == e2?.nakgolaCh2Time &&
        e1?.nakgolaCh2Phone == e2?.nakgolaCh2Phone &&
        e1?.nakgolaDoctorPic == e2?.nakgolaDoctorPic;
  }

  @override
  int hash(NakkangolaRecord? e) => const ListEquality().hash([
        e?.nakgolaDoctor,
        e?.nakgolaDoctorExprt,
        e?.nakgolaDoctorEduca,
        e?.nakgolaDoctorWorkLoca,
        e?.nakgolaDoctorTrtment,
        e?.nakgolaCh1NameAdd,
        e?.nakgolaCh1Day,
        e?.nakgolaCh1Time,
        e?.nakgolaCh1Phone,
        e?.nakgolaCh2NameAdd,
        e?.nakgolaCh2Day,
        e?.nakgolaCh2Time,
        e?.nakgolaCh2Phone,
        e?.nakgolaDoctorPic
      ]);

  @override
  bool isValidKey(Object? o) => o is NakkangolaRecord;
}
