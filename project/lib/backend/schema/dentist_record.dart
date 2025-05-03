import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DentistRecord extends FirestoreRecord {
  DentistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dentistDoctor" field.
  String? _dentistDoctor;
  String get dentistDoctor => _dentistDoctor ?? '';
  bool hasDentistDoctor() => _dentistDoctor != null;

  // "dentistDoctorExpt" field.
  String? _dentistDoctorExpt;
  String get dentistDoctorExpt => _dentistDoctorExpt ?? '';
  bool hasDentistDoctorExpt() => _dentistDoctorExpt != null;

  // "dentistDoctEduca" field.
  String? _dentistDoctEduca;
  String get dentistDoctEduca => _dentistDoctEduca ?? '';
  bool hasDentistDoctEduca() => _dentistDoctEduca != null;

  // "dentistDoctWorkLoca" field.
  String? _dentistDoctWorkLoca;
  String get dentistDoctWorkLoca => _dentistDoctWorkLoca ?? '';
  bool hasDentistDoctWorkLoca() => _dentistDoctWorkLoca != null;

  // "dentistDoctTrtment" field.
  String? _dentistDoctTrtment;
  String get dentistDoctTrtment => _dentistDoctTrtment ?? '';
  bool hasDentistDoctTrtment() => _dentistDoctTrtment != null;

  // "denstistCh1NameAdd" field.
  String? _denstistCh1NameAdd;
  String get denstistCh1NameAdd => _denstistCh1NameAdd ?? '';
  bool hasDenstistCh1NameAdd() => _denstistCh1NameAdd != null;

  // "dentistCh1Day" field.
  String? _dentistCh1Day;
  String get dentistCh1Day => _dentistCh1Day ?? '';
  bool hasDentistCh1Day() => _dentistCh1Day != null;

  // "dentistCh1Time" field.
  String? _dentistCh1Time;
  String get dentistCh1Time => _dentistCh1Time ?? '';
  bool hasDentistCh1Time() => _dentistCh1Time != null;

  // "dentistCh1Phone" field.
  String? _dentistCh1Phone;
  String get dentistCh1Phone => _dentistCh1Phone ?? '';
  bool hasDentistCh1Phone() => _dentistCh1Phone != null;

  // "dentistCh2NameAdd" field.
  String? _dentistCh2NameAdd;
  String get dentistCh2NameAdd => _dentistCh2NameAdd ?? '';
  bool hasDentistCh2NameAdd() => _dentistCh2NameAdd != null;

  // "dentistCh2Day" field.
  String? _dentistCh2Day;
  String get dentistCh2Day => _dentistCh2Day ?? '';
  bool hasDentistCh2Day() => _dentistCh2Day != null;

  // "dentistCh2Time" field.
  String? _dentistCh2Time;
  String get dentistCh2Time => _dentistCh2Time ?? '';
  bool hasDentistCh2Time() => _dentistCh2Time != null;

  // "dentistCh2Phone" field.
  String? _dentistCh2Phone;
  String get dentistCh2Phone => _dentistCh2Phone ?? '';
  bool hasDentistCh2Phone() => _dentistCh2Phone != null;

  // "dentistDoctPic" field.
  String? _dentistDoctPic;
  String get dentistDoctPic => _dentistDoctPic ?? '';
  bool hasDentistDoctPic() => _dentistDoctPic != null;

  void _initializeFields() {
    _dentistDoctor = snapshotData['dentistDoctor'] as String?;
    _dentistDoctorExpt = snapshotData['dentistDoctorExpt'] as String?;
    _dentistDoctEduca = snapshotData['dentistDoctEduca'] as String?;
    _dentistDoctWorkLoca = snapshotData['dentistDoctWorkLoca'] as String?;
    _dentistDoctTrtment = snapshotData['dentistDoctTrtment'] as String?;
    _denstistCh1NameAdd = snapshotData['denstistCh1NameAdd'] as String?;
    _dentistCh1Day = snapshotData['dentistCh1Day'] as String?;
    _dentistCh1Time = snapshotData['dentistCh1Time'] as String?;
    _dentistCh1Phone = snapshotData['dentistCh1Phone'] as String?;
    _dentistCh2NameAdd = snapshotData['dentistCh2NameAdd'] as String?;
    _dentistCh2Day = snapshotData['dentistCh2Day'] as String?;
    _dentistCh2Time = snapshotData['dentistCh2Time'] as String?;
    _dentistCh2Phone = snapshotData['dentistCh2Phone'] as String?;
    _dentistDoctPic = snapshotData['dentistDoctPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dentist');

  static Stream<DentistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DentistRecord.fromSnapshot(s));

  static Future<DentistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DentistRecord.fromSnapshot(s));

  static DentistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DentistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DentistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DentistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DentistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DentistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDentistRecordData({
  String? dentistDoctor,
  String? dentistDoctorExpt,
  String? dentistDoctEduca,
  String? dentistDoctWorkLoca,
  String? dentistDoctTrtment,
  String? denstistCh1NameAdd,
  String? dentistCh1Day,
  String? dentistCh1Time,
  String? dentistCh1Phone,
  String? dentistCh2NameAdd,
  String? dentistCh2Day,
  String? dentistCh2Time,
  String? dentistCh2Phone,
  String? dentistDoctPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dentistDoctor': dentistDoctor,
      'dentistDoctorExpt': dentistDoctorExpt,
      'dentistDoctEduca': dentistDoctEduca,
      'dentistDoctWorkLoca': dentistDoctWorkLoca,
      'dentistDoctTrtment': dentistDoctTrtment,
      'denstistCh1NameAdd': denstistCh1NameAdd,
      'dentistCh1Day': dentistCh1Day,
      'dentistCh1Time': dentistCh1Time,
      'dentistCh1Phone': dentistCh1Phone,
      'dentistCh2NameAdd': dentistCh2NameAdd,
      'dentistCh2Day': dentistCh2Day,
      'dentistCh2Time': dentistCh2Time,
      'dentistCh2Phone': dentistCh2Phone,
      'dentistDoctPic': dentistDoctPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class DentistRecordDocumentEquality implements Equality<DentistRecord> {
  const DentistRecordDocumentEquality();

  @override
  bool equals(DentistRecord? e1, DentistRecord? e2) {
    return e1?.dentistDoctor == e2?.dentistDoctor &&
        e1?.dentistDoctorExpt == e2?.dentistDoctorExpt &&
        e1?.dentistDoctEduca == e2?.dentistDoctEduca &&
        e1?.dentistDoctWorkLoca == e2?.dentistDoctWorkLoca &&
        e1?.dentistDoctTrtment == e2?.dentistDoctTrtment &&
        e1?.denstistCh1NameAdd == e2?.denstistCh1NameAdd &&
        e1?.dentistCh1Day == e2?.dentistCh1Day &&
        e1?.dentistCh1Time == e2?.dentistCh1Time &&
        e1?.dentistCh1Phone == e2?.dentistCh1Phone &&
        e1?.dentistCh2NameAdd == e2?.dentistCh2NameAdd &&
        e1?.dentistCh2Day == e2?.dentistCh2Day &&
        e1?.dentistCh2Time == e2?.dentistCh2Time &&
        e1?.dentistCh2Phone == e2?.dentistCh2Phone &&
        e1?.dentistDoctPic == e2?.dentistDoctPic;
  }

  @override
  int hash(DentistRecord? e) => const ListEquality().hash([
        e?.dentistDoctor,
        e?.dentistDoctorExpt,
        e?.dentistDoctEduca,
        e?.dentistDoctWorkLoca,
        e?.dentistDoctTrtment,
        e?.denstistCh1NameAdd,
        e?.dentistCh1Day,
        e?.dentistCh1Time,
        e?.dentistCh1Phone,
        e?.dentistCh2NameAdd,
        e?.dentistCh2Day,
        e?.dentistCh2Time,
        e?.dentistCh2Phone,
        e?.dentistDoctPic
      ]);

  @override
  bool isValidKey(Object? o) => o is DentistRecord;
}
