import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArthopedicRecord extends FirestoreRecord {
  ArthopedicRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "arthoDoctor" field.
  String? _arthoDoctor;
  String get arthoDoctor => _arthoDoctor ?? '';
  bool hasArthoDoctor() => _arthoDoctor != null;

  // "arthoDoctorExpt" field.
  String? _arthoDoctorExpt;
  String get arthoDoctorExpt => _arthoDoctorExpt ?? '';
  bool hasArthoDoctorExpt() => _arthoDoctorExpt != null;

  // "arthoDoctorEduca" field.
  String? _arthoDoctorEduca;
  String get arthoDoctorEduca => _arthoDoctorEduca ?? '';
  bool hasArthoDoctorEduca() => _arthoDoctorEduca != null;

  // "arthoDoctorWorkLoca" field.
  String? _arthoDoctorWorkLoca;
  String get arthoDoctorWorkLoca => _arthoDoctorWorkLoca ?? '';
  bool hasArthoDoctorWorkLoca() => _arthoDoctorWorkLoca != null;

  // "arthoDoctorPic" field.
  String? _arthoDoctorPic;
  String get arthoDoctorPic => _arthoDoctorPic ?? '';
  bool hasArthoDoctorPic() => _arthoDoctorPic != null;

  // "arthoDoctorTrtment" field.
  String? _arthoDoctorTrtment;
  String get arthoDoctorTrtment => _arthoDoctorTrtment ?? '';
  bool hasArthoDoctorTrtment() => _arthoDoctorTrtment != null;

  // "arthCh1NameAdd" field.
  String? _arthCh1NameAdd;
  String get arthCh1NameAdd => _arthCh1NameAdd ?? '';
  bool hasArthCh1NameAdd() => _arthCh1NameAdd != null;

  // "arthoCh1Day" field.
  String? _arthoCh1Day;
  String get arthoCh1Day => _arthoCh1Day ?? '';
  bool hasArthoCh1Day() => _arthoCh1Day != null;

  // "arthoCh1Time" field.
  String? _arthoCh1Time;
  String get arthoCh1Time => _arthoCh1Time ?? '';
  bool hasArthoCh1Time() => _arthoCh1Time != null;

  // "arthoCh1Phone" field.
  String? _arthoCh1Phone;
  String get arthoCh1Phone => _arthoCh1Phone ?? '';
  bool hasArthoCh1Phone() => _arthoCh1Phone != null;

  // "arthoCh2NameAdd" field.
  String? _arthoCh2NameAdd;
  String get arthoCh2NameAdd => _arthoCh2NameAdd ?? '';
  bool hasArthoCh2NameAdd() => _arthoCh2NameAdd != null;

  // "arthoCh2Day" field.
  String? _arthoCh2Day;
  String get arthoCh2Day => _arthoCh2Day ?? '';
  bool hasArthoCh2Day() => _arthoCh2Day != null;

  // "arthoCh2Time" field.
  String? _arthoCh2Time;
  String get arthoCh2Time => _arthoCh2Time ?? '';
  bool hasArthoCh2Time() => _arthoCh2Time != null;

  // "arthoCh2Phone" field.
  String? _arthoCh2Phone;
  String get arthoCh2Phone => _arthoCh2Phone ?? '';
  bool hasArthoCh2Phone() => _arthoCh2Phone != null;

  void _initializeFields() {
    _arthoDoctor = snapshotData['arthoDoctor'] as String?;
    _arthoDoctorExpt = snapshotData['arthoDoctorExpt'] as String?;
    _arthoDoctorEduca = snapshotData['arthoDoctorEduca'] as String?;
    _arthoDoctorWorkLoca = snapshotData['arthoDoctorWorkLoca'] as String?;
    _arthoDoctorPic = snapshotData['arthoDoctorPic'] as String?;
    _arthoDoctorTrtment = snapshotData['arthoDoctorTrtment'] as String?;
    _arthCh1NameAdd = snapshotData['arthCh1NameAdd'] as String?;
    _arthoCh1Day = snapshotData['arthoCh1Day'] as String?;
    _arthoCh1Time = snapshotData['arthoCh1Time'] as String?;
    _arthoCh1Phone = snapshotData['arthoCh1Phone'] as String?;
    _arthoCh2NameAdd = snapshotData['arthoCh2NameAdd'] as String?;
    _arthoCh2Day = snapshotData['arthoCh2Day'] as String?;
    _arthoCh2Time = snapshotData['arthoCh2Time'] as String?;
    _arthoCh2Phone = snapshotData['arthoCh2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('arthopedic');

  static Stream<ArthopedicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArthopedicRecord.fromSnapshot(s));

  static Future<ArthopedicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArthopedicRecord.fromSnapshot(s));

  static ArthopedicRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArthopedicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArthopedicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArthopedicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArthopedicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArthopedicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArthopedicRecordData({
  String? arthoDoctor,
  String? arthoDoctorExpt,
  String? arthoDoctorEduca,
  String? arthoDoctorWorkLoca,
  String? arthoDoctorPic,
  String? arthoDoctorTrtment,
  String? arthCh1NameAdd,
  String? arthoCh1Day,
  String? arthoCh1Time,
  String? arthoCh1Phone,
  String? arthoCh2NameAdd,
  String? arthoCh2Day,
  String? arthoCh2Time,
  String? arthoCh2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'arthoDoctor': arthoDoctor,
      'arthoDoctorExpt': arthoDoctorExpt,
      'arthoDoctorEduca': arthoDoctorEduca,
      'arthoDoctorWorkLoca': arthoDoctorWorkLoca,
      'arthoDoctorPic': arthoDoctorPic,
      'arthoDoctorTrtment': arthoDoctorTrtment,
      'arthCh1NameAdd': arthCh1NameAdd,
      'arthoCh1Day': arthoCh1Day,
      'arthoCh1Time': arthoCh1Time,
      'arthoCh1Phone': arthoCh1Phone,
      'arthoCh2NameAdd': arthoCh2NameAdd,
      'arthoCh2Day': arthoCh2Day,
      'arthoCh2Time': arthoCh2Time,
      'arthoCh2Phone': arthoCh2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArthopedicRecordDocumentEquality implements Equality<ArthopedicRecord> {
  const ArthopedicRecordDocumentEquality();

  @override
  bool equals(ArthopedicRecord? e1, ArthopedicRecord? e2) {
    return e1?.arthoDoctor == e2?.arthoDoctor &&
        e1?.arthoDoctorExpt == e2?.arthoDoctorExpt &&
        e1?.arthoDoctorEduca == e2?.arthoDoctorEduca &&
        e1?.arthoDoctorWorkLoca == e2?.arthoDoctorWorkLoca &&
        e1?.arthoDoctorPic == e2?.arthoDoctorPic &&
        e1?.arthoDoctorTrtment == e2?.arthoDoctorTrtment &&
        e1?.arthCh1NameAdd == e2?.arthCh1NameAdd &&
        e1?.arthoCh1Day == e2?.arthoCh1Day &&
        e1?.arthoCh1Time == e2?.arthoCh1Time &&
        e1?.arthoCh1Phone == e2?.arthoCh1Phone &&
        e1?.arthoCh2NameAdd == e2?.arthoCh2NameAdd &&
        e1?.arthoCh2Day == e2?.arthoCh2Day &&
        e1?.arthoCh2Time == e2?.arthoCh2Time &&
        e1?.arthoCh2Phone == e2?.arthoCh2Phone;
  }

  @override
  int hash(ArthopedicRecord? e) => const ListEquality().hash([
        e?.arthoDoctor,
        e?.arthoDoctorExpt,
        e?.arthoDoctorEduca,
        e?.arthoDoctorWorkLoca,
        e?.arthoDoctorPic,
        e?.arthoDoctorTrtment,
        e?.arthCh1NameAdd,
        e?.arthoCh1Day,
        e?.arthoCh1Time,
        e?.arthoCh1Phone,
        e?.arthoCh2NameAdd,
        e?.arthoCh2Day,
        e?.arthoCh2Time,
        e?.arthoCh2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is ArthopedicRecord;
}
