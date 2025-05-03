import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRecord extends FirestoreRecord {
  JobRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobtitle" field.
  String? _jobtitle;
  String get jobtitle => _jobtitle ?? '';
  bool hasJobtitle() => _jobtitle != null;

  // "protisthanernam" field.
  String? _protisthanernam;
  String get protisthanernam => _protisthanernam ?? '';
  bool hasProtisthanernam() => _protisthanernam != null;

  // "postName" field.
  String? _postName;
  String get postName => _postName ?? '';
  bool hasPostName() => _postName != null;

  // "postSo" field.
  String? _postSo;
  String get postSo => _postSo ?? '';
  bool hasPostSo() => _postSo != null;

  // "educaQual" field.
  String? _educaQual;
  String get educaQual => _educaQual ?? '';
  bool hasEducaQual() => _educaQual != null;

  // "experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "proEmail" field.
  String? _proEmail;
  String get proEmail => _proEmail ?? '';
  bool hasProEmail() => _proEmail != null;

  // "deadLine" field.
  String? _deadLine;
  String get deadLine => _deadLine ?? '';
  bool hasDeadLine() => _deadLine != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "proPhne" field.
  String? _proPhne;
  String get proPhne => _proPhne ?? '';
  bool hasProPhne() => _proPhne != null;

  // "addrs" field.
  String? _addrs;
  String get addrs => _addrs ?? '';
  bool hasAddrs() => _addrs != null;

  // "sallery" field.
  String? _sallery;
  String get sallery => _sallery ?? '';
  bool hasSallery() => _sallery != null;

  void _initializeFields() {
    _jobtitle = snapshotData['jobtitle'] as String?;
    _protisthanernam = snapshotData['protisthanernam'] as String?;
    _postName = snapshotData['postName'] as String?;
    _postSo = snapshotData['postSo'] as String?;
    _educaQual = snapshotData['educaQual'] as String?;
    _experience = snapshotData['experience'] as String?;
    _area = snapshotData['area'] as String?;
    _proEmail = snapshotData['proEmail'] as String?;
    _deadLine = snapshotData['deadLine'] as String?;
    _details = snapshotData['details'] as String?;
    _pic = snapshotData['pic'] as String?;
    _proPhne = snapshotData['proPhne'] as String?;
    _addrs = snapshotData['addrs'] as String?;
    _sallery = snapshotData['sallery'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job');

  static Stream<JobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRecord.fromSnapshot(s));

  static Future<JobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRecord.fromSnapshot(s));

  static JobRecord fromSnapshot(DocumentSnapshot snapshot) => JobRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRecordData({
  String? jobtitle,
  String? protisthanernam,
  String? postName,
  String? postSo,
  String? educaQual,
  String? experience,
  String? area,
  String? proEmail,
  String? deadLine,
  String? details,
  String? pic,
  String? proPhne,
  String? addrs,
  String? sallery,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobtitle': jobtitle,
      'protisthanernam': protisthanernam,
      'postName': postName,
      'postSo': postSo,
      'educaQual': educaQual,
      'experience': experience,
      'area': area,
      'proEmail': proEmail,
      'deadLine': deadLine,
      'details': details,
      'pic': pic,
      'proPhne': proPhne,
      'addrs': addrs,
      'sallery': sallery,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRecordDocumentEquality implements Equality<JobRecord> {
  const JobRecordDocumentEquality();

  @override
  bool equals(JobRecord? e1, JobRecord? e2) {
    return e1?.jobtitle == e2?.jobtitle &&
        e1?.protisthanernam == e2?.protisthanernam &&
        e1?.postName == e2?.postName &&
        e1?.postSo == e2?.postSo &&
        e1?.educaQual == e2?.educaQual &&
        e1?.experience == e2?.experience &&
        e1?.area == e2?.area &&
        e1?.proEmail == e2?.proEmail &&
        e1?.deadLine == e2?.deadLine &&
        e1?.details == e2?.details &&
        e1?.pic == e2?.pic &&
        e1?.proPhne == e2?.proPhne &&
        e1?.addrs == e2?.addrs &&
        e1?.sallery == e2?.sallery;
  }

  @override
  int hash(JobRecord? e) => const ListEquality().hash([
        e?.jobtitle,
        e?.protisthanernam,
        e?.postName,
        e?.postSo,
        e?.educaQual,
        e?.experience,
        e?.area,
        e?.proEmail,
        e?.deadLine,
        e?.details,
        e?.pic,
        e?.proPhne,
        e?.addrs,
        e?.sallery
      ]);

  @override
  bool isValidKey(Object? o) => o is JobRecord;
}
