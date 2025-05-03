import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BethaRogRecord extends FirestoreRecord {
  BethaRogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bethaDoctor" field.
  String? _bethaDoctor;
  String get bethaDoctor => _bethaDoctor ?? '';
  bool hasBethaDoctor() => _bethaDoctor != null;

  // "bethaDoctorExpert" field.
  String? _bethaDoctorExpert;
  String get bethaDoctorExpert => _bethaDoctorExpert ?? '';
  bool hasBethaDoctorExpert() => _bethaDoctorExpert != null;

  // "bethaDoctEdu" field.
  String? _bethaDoctEdu;
  String get bethaDoctEdu => _bethaDoctEdu ?? '';
  bool hasBethaDoctEdu() => _bethaDoctEdu != null;

  // "bethaDoctorWork" field.
  String? _bethaDoctorWork;
  String get bethaDoctorWork => _bethaDoctorWork ?? '';
  bool hasBethaDoctorWork() => _bethaDoctorWork != null;

  // "bethaDoctPic" field.
  String? _bethaDoctPic;
  String get bethaDoctPic => _bethaDoctPic ?? '';
  bool hasBethaDoctPic() => _bethaDoctPic != null;

  // "bethaTrtment" field.
  String? _bethaTrtment;
  String get bethaTrtment => _bethaTrtment ?? '';
  bool hasBethaTrtment() => _bethaTrtment != null;

  // "bethaCh1NameAdd" field.
  String? _bethaCh1NameAdd;
  String get bethaCh1NameAdd => _bethaCh1NameAdd ?? '';
  bool hasBethaCh1NameAdd() => _bethaCh1NameAdd != null;

  // "bethaCh1Day" field.
  String? _bethaCh1Day;
  String get bethaCh1Day => _bethaCh1Day ?? '';
  bool hasBethaCh1Day() => _bethaCh1Day != null;

  // "bethaCh1Time" field.
  String? _bethaCh1Time;
  String get bethaCh1Time => _bethaCh1Time ?? '';
  bool hasBethaCh1Time() => _bethaCh1Time != null;

  // "bethaCh1Phone" field.
  String? _bethaCh1Phone;
  String get bethaCh1Phone => _bethaCh1Phone ?? '';
  bool hasBethaCh1Phone() => _bethaCh1Phone != null;

  // "bethaCh2NameAdd" field.
  String? _bethaCh2NameAdd;
  String get bethaCh2NameAdd => _bethaCh2NameAdd ?? '';
  bool hasBethaCh2NameAdd() => _bethaCh2NameAdd != null;

  // "bethaCh2Day" field.
  String? _bethaCh2Day;
  String get bethaCh2Day => _bethaCh2Day ?? '';
  bool hasBethaCh2Day() => _bethaCh2Day != null;

  // "bethaCh2Time" field.
  String? _bethaCh2Time;
  String get bethaCh2Time => _bethaCh2Time ?? '';
  bool hasBethaCh2Time() => _bethaCh2Time != null;

  // "bethaCh2Phone" field.
  String? _bethaCh2Phone;
  String get bethaCh2Phone => _bethaCh2Phone ?? '';
  bool hasBethaCh2Phone() => _bethaCh2Phone != null;

  void _initializeFields() {
    _bethaDoctor = snapshotData['bethaDoctor'] as String?;
    _bethaDoctorExpert = snapshotData['bethaDoctorExpert'] as String?;
    _bethaDoctEdu = snapshotData['bethaDoctEdu'] as String?;
    _bethaDoctorWork = snapshotData['bethaDoctorWork'] as String?;
    _bethaDoctPic = snapshotData['bethaDoctPic'] as String?;
    _bethaTrtment = snapshotData['bethaTrtment'] as String?;
    _bethaCh1NameAdd = snapshotData['bethaCh1NameAdd'] as String?;
    _bethaCh1Day = snapshotData['bethaCh1Day'] as String?;
    _bethaCh1Time = snapshotData['bethaCh1Time'] as String?;
    _bethaCh1Phone = snapshotData['bethaCh1Phone'] as String?;
    _bethaCh2NameAdd = snapshotData['bethaCh2NameAdd'] as String?;
    _bethaCh2Day = snapshotData['bethaCh2Day'] as String?;
    _bethaCh2Time = snapshotData['bethaCh2Time'] as String?;
    _bethaCh2Phone = snapshotData['bethaCh2Phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bethaRog');

  static Stream<BethaRogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BethaRogRecord.fromSnapshot(s));

  static Future<BethaRogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BethaRogRecord.fromSnapshot(s));

  static BethaRogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BethaRogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BethaRogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BethaRogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BethaRogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BethaRogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBethaRogRecordData({
  String? bethaDoctor,
  String? bethaDoctorExpert,
  String? bethaDoctEdu,
  String? bethaDoctorWork,
  String? bethaDoctPic,
  String? bethaTrtment,
  String? bethaCh1NameAdd,
  String? bethaCh1Day,
  String? bethaCh1Time,
  String? bethaCh1Phone,
  String? bethaCh2NameAdd,
  String? bethaCh2Day,
  String? bethaCh2Time,
  String? bethaCh2Phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bethaDoctor': bethaDoctor,
      'bethaDoctorExpert': bethaDoctorExpert,
      'bethaDoctEdu': bethaDoctEdu,
      'bethaDoctorWork': bethaDoctorWork,
      'bethaDoctPic': bethaDoctPic,
      'bethaTrtment': bethaTrtment,
      'bethaCh1NameAdd': bethaCh1NameAdd,
      'bethaCh1Day': bethaCh1Day,
      'bethaCh1Time': bethaCh1Time,
      'bethaCh1Phone': bethaCh1Phone,
      'bethaCh2NameAdd': bethaCh2NameAdd,
      'bethaCh2Day': bethaCh2Day,
      'bethaCh2Time': bethaCh2Time,
      'bethaCh2Phone': bethaCh2Phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class BethaRogRecordDocumentEquality implements Equality<BethaRogRecord> {
  const BethaRogRecordDocumentEquality();

  @override
  bool equals(BethaRogRecord? e1, BethaRogRecord? e2) {
    return e1?.bethaDoctor == e2?.bethaDoctor &&
        e1?.bethaDoctorExpert == e2?.bethaDoctorExpert &&
        e1?.bethaDoctEdu == e2?.bethaDoctEdu &&
        e1?.bethaDoctorWork == e2?.bethaDoctorWork &&
        e1?.bethaDoctPic == e2?.bethaDoctPic &&
        e1?.bethaTrtment == e2?.bethaTrtment &&
        e1?.bethaCh1NameAdd == e2?.bethaCh1NameAdd &&
        e1?.bethaCh1Day == e2?.bethaCh1Day &&
        e1?.bethaCh1Time == e2?.bethaCh1Time &&
        e1?.bethaCh1Phone == e2?.bethaCh1Phone &&
        e1?.bethaCh2NameAdd == e2?.bethaCh2NameAdd &&
        e1?.bethaCh2Day == e2?.bethaCh2Day &&
        e1?.bethaCh2Time == e2?.bethaCh2Time &&
        e1?.bethaCh2Phone == e2?.bethaCh2Phone;
  }

  @override
  int hash(BethaRogRecord? e) => const ListEquality().hash([
        e?.bethaDoctor,
        e?.bethaDoctorExpert,
        e?.bethaDoctEdu,
        e?.bethaDoctorWork,
        e?.bethaDoctPic,
        e?.bethaTrtment,
        e?.bethaCh1NameAdd,
        e?.bethaCh1Day,
        e?.bethaCh1Time,
        e?.bethaCh1Phone,
        e?.bethaCh2NameAdd,
        e?.bethaCh2Day,
        e?.bethaCh2Time,
        e?.bethaCh2Phone
      ]);

  @override
  bool isValidKey(Object? o) => o is BethaRogRecord;
}
