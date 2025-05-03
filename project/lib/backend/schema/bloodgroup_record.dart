import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BloodgroupRecord extends FirestoreRecord {
  BloodgroupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bloodGroup" field.
  String? _bloodGroup;
  String get bloodGroup => _bloodGroup ?? '';
  bool hasBloodGroup() => _bloodGroup != null;

  // "donorName" field.
  String? _donorName;
  String get donorName => _donorName ?? '';
  bool hasDonorName() => _donorName != null;

  // "donorMobile" field.
  String? _donorMobile;
  String get donorMobile => _donorMobile ?? '';
  bool hasDonorMobile() => _donorMobile != null;

  // "donorPs" field.
  String? _donorPs;
  String get donorPs => _donorPs ?? '';
  bool hasDonorPs() => _donorPs != null;

  // "donorDistric" field.
  String? _donorDistric;
  String get donorDistric => _donorDistric ?? '';
  bool hasDonorDistric() => _donorDistric != null;

  // "donorComnt" field.
  String? _donorComnt;
  String get donorComnt => _donorComnt ?? '';
  bool hasDonorComnt() => _donorComnt != null;

  // "donorPic" field.
  String? _donorPic;
  String get donorPic => _donorPic ?? '';
  bool hasDonorPic() => _donorPic != null;

  // "blooLastDate" field.
  String? _blooLastDate;
  String get blooLastDate => _blooLastDate ?? '';
  bool hasBlooLastDate() => _blooLastDate != null;

  void _initializeFields() {
    _bloodGroup = snapshotData['bloodGroup'] as String?;
    _donorName = snapshotData['donorName'] as String?;
    _donorMobile = snapshotData['donorMobile'] as String?;
    _donorPs = snapshotData['donorPs'] as String?;
    _donorDistric = snapshotData['donorDistric'] as String?;
    _donorComnt = snapshotData['donorComnt'] as String?;
    _donorPic = snapshotData['donorPic'] as String?;
    _blooLastDate = snapshotData['blooLastDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bloodgroup');

  static Stream<BloodgroupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodgroupRecord.fromSnapshot(s));

  static Future<BloodgroupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodgroupRecord.fromSnapshot(s));

  static BloodgroupRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodgroupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodgroupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodgroupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodgroupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodgroupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodgroupRecordData({
  String? bloodGroup,
  String? donorName,
  String? donorMobile,
  String? donorPs,
  String? donorDistric,
  String? donorComnt,
  String? donorPic,
  String? blooLastDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bloodGroup': bloodGroup,
      'donorName': donorName,
      'donorMobile': donorMobile,
      'donorPs': donorPs,
      'donorDistric': donorDistric,
      'donorComnt': donorComnt,
      'donorPic': donorPic,
      'blooLastDate': blooLastDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloodgroupRecordDocumentEquality implements Equality<BloodgroupRecord> {
  const BloodgroupRecordDocumentEquality();

  @override
  bool equals(BloodgroupRecord? e1, BloodgroupRecord? e2) {
    return e1?.bloodGroup == e2?.bloodGroup &&
        e1?.donorName == e2?.donorName &&
        e1?.donorMobile == e2?.donorMobile &&
        e1?.donorPs == e2?.donorPs &&
        e1?.donorDistric == e2?.donorDistric &&
        e1?.donorComnt == e2?.donorComnt &&
        e1?.donorPic == e2?.donorPic &&
        e1?.blooLastDate == e2?.blooLastDate;
  }

  @override
  int hash(BloodgroupRecord? e) => const ListEquality().hash([
        e?.bloodGroup,
        e?.donorName,
        e?.donorMobile,
        e?.donorPs,
        e?.donorDistric,
        e?.donorComnt,
        e?.donorPic,
        e?.blooLastDate
      ]);

  @override
  bool isValidKey(Object? o) => o is BloodgroupRecord;
}
