import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosticRecord extends FirestoreRecord {
  DiagnosticRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "diagnosticName" field.
  String? _diagnosticName;
  String get diagnosticName => _diagnosticName ?? '';
  bool hasDiagnosticName() => _diagnosticName != null;

  // "diagnosticArea" field.
  String? _diagnosticArea;
  String get diagnosticArea => _diagnosticArea ?? '';
  bool hasDiagnosticArea() => _diagnosticArea != null;

  // "diagnosticAddrs" field.
  String? _diagnosticAddrs;
  String get diagnosticAddrs => _diagnosticAddrs ?? '';
  bool hasDiagnosticAddrs() => _diagnosticAddrs != null;

  // "diagnosticPhone" field.
  String? _diagnosticPhone;
  String get diagnosticPhone => _diagnosticPhone ?? '';
  bool hasDiagnosticPhone() => _diagnosticPhone != null;

  // "diagnosticMapUrl" field.
  String? _diagnosticMapUrl;
  String get diagnosticMapUrl => _diagnosticMapUrl ?? '';
  bool hasDiagnosticMapUrl() => _diagnosticMapUrl != null;

  // "diagnosticPicLogo" field.
  String? _diagnosticPicLogo;
  String get diagnosticPicLogo => _diagnosticPicLogo ?? '';
  bool hasDiagnosticPicLogo() => _diagnosticPicLogo != null;

  void _initializeFields() {
    _diagnosticName = snapshotData['diagnosticName'] as String?;
    _diagnosticArea = snapshotData['diagnosticArea'] as String?;
    _diagnosticAddrs = snapshotData['diagnosticAddrs'] as String?;
    _diagnosticPhone = snapshotData['diagnosticPhone'] as String?;
    _diagnosticMapUrl = snapshotData['diagnosticMapUrl'] as String?;
    _diagnosticPicLogo = snapshotData['diagnosticPicLogo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diagnostic');

  static Stream<DiagnosticRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiagnosticRecord.fromSnapshot(s));

  static Future<DiagnosticRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiagnosticRecord.fromSnapshot(s));

  static DiagnosticRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiagnosticRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiagnosticRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiagnosticRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiagnosticRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiagnosticRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiagnosticRecordData({
  String? diagnosticName,
  String? diagnosticArea,
  String? diagnosticAddrs,
  String? diagnosticPhone,
  String? diagnosticMapUrl,
  String? diagnosticPicLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'diagnosticName': diagnosticName,
      'diagnosticArea': diagnosticArea,
      'diagnosticAddrs': diagnosticAddrs,
      'diagnosticPhone': diagnosticPhone,
      'diagnosticMapUrl': diagnosticMapUrl,
      'diagnosticPicLogo': diagnosticPicLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiagnosticRecordDocumentEquality implements Equality<DiagnosticRecord> {
  const DiagnosticRecordDocumentEquality();

  @override
  bool equals(DiagnosticRecord? e1, DiagnosticRecord? e2) {
    return e1?.diagnosticName == e2?.diagnosticName &&
        e1?.diagnosticArea == e2?.diagnosticArea &&
        e1?.diagnosticAddrs == e2?.diagnosticAddrs &&
        e1?.diagnosticPhone == e2?.diagnosticPhone &&
        e1?.diagnosticMapUrl == e2?.diagnosticMapUrl &&
        e1?.diagnosticPicLogo == e2?.diagnosticPicLogo;
  }

  @override
  int hash(DiagnosticRecord? e) => const ListEquality().hash([
        e?.diagnosticName,
        e?.diagnosticArea,
        e?.diagnosticAddrs,
        e?.diagnosticPhone,
        e?.diagnosticMapUrl,
        e?.diagnosticPicLogo
      ]);

  @override
  bool isValidKey(Object? o) => o is DiagnosticRecord;
}
