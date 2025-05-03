import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopRecord extends FirestoreRecord {
  ShopRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "sellerName" field.
  String? _sellerName;
  String get sellerName => _sellerName ?? '';
  bool hasSellerName() => _sellerName != null;

  // "prdctStats" field.
  String? _prdctStats;
  String get prdctStats => _prdctStats ?? '';
  bool hasPrdctStats() => _prdctStats != null;

  // "productDetails" field.
  String? _productDetails;
  String get productDetails => _productDetails ?? '';
  bool hasProductDetails() => _productDetails != null;

  // "productPrice" field.
  String? _productPrice;
  String get productPrice => _productPrice ?? '';
  bool hasProductPrice() => _productPrice != null;

  // "mobileNumbr" field.
  String? _mobileNumbr;
  String get mobileNumbr => _mobileNumbr ?? '';
  bool hasMobileNumbr() => _mobileNumbr != null;

  // "selrArea" field.
  String? _selrArea;
  String get selrArea => _selrArea ?? '';
  bool hasSelrArea() => _selrArea != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "productPic" field.
  String? _productPic;
  String get productPic => _productPic ?? '';
  bool hasProductPic() => _productPic != null;

  void _initializeFields() {
    _productName = snapshotData['productName'] as String?;
    _sellerName = snapshotData['sellerName'] as String?;
    _prdctStats = snapshotData['prdctStats'] as String?;
    _productDetails = snapshotData['productDetails'] as String?;
    _productPrice = snapshotData['productPrice'] as String?;
    _mobileNumbr = snapshotData['mobileNumbr'] as String?;
    _selrArea = snapshotData['selrArea'] as String?;
    _location = snapshotData['location'] as String?;
    _productPic = snapshotData['productPic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop');

  static Stream<ShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopRecord.fromSnapshot(s));

  static Future<ShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopRecord.fromSnapshot(s));

  static ShopRecord fromSnapshot(DocumentSnapshot snapshot) => ShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopRecordData({
  String? productName,
  String? sellerName,
  String? prdctStats,
  String? productDetails,
  String? productPrice,
  String? mobileNumbr,
  String? selrArea,
  String? location,
  String? productPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productName': productName,
      'sellerName': sellerName,
      'prdctStats': prdctStats,
      'productDetails': productDetails,
      'productPrice': productPrice,
      'mobileNumbr': mobileNumbr,
      'selrArea': selrArea,
      'location': location,
      'productPic': productPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopRecordDocumentEquality implements Equality<ShopRecord> {
  const ShopRecordDocumentEquality();

  @override
  bool equals(ShopRecord? e1, ShopRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.sellerName == e2?.sellerName &&
        e1?.prdctStats == e2?.prdctStats &&
        e1?.productDetails == e2?.productDetails &&
        e1?.productPrice == e2?.productPrice &&
        e1?.mobileNumbr == e2?.mobileNumbr &&
        e1?.selrArea == e2?.selrArea &&
        e1?.location == e2?.location &&
        e1?.productPic == e2?.productPic;
  }

  @override
  int hash(ShopRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.sellerName,
        e?.prdctStats,
        e?.productDetails,
        e?.productPrice,
        e?.mobileNumbr,
        e?.selrArea,
        e?.location,
        e?.productPic
      ]);

  @override
  bool isValidKey(Object? o) => o is ShopRecord;
}
