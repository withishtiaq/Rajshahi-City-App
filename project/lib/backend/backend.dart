import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/firebase_auth/auth_util.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/user_details_record.dart';
import 'schema/mono_rog_record.dart';
import 'schema/user_record.dart';
import 'schema/arthopedic_record.dart';
import 'schema/azma_bokkhobedhi_record.dart';
import 'schema/betha_rog_record.dart';
import 'schema/blood_rog_record.dart';
import 'schema/burn_plastic_record.dart';
import 'schema/cancer_record.dart';
import 'schema/dentist_record.dart';
import 'schema/diabetis_hormon_record.dart';
import 'schema/eye_record.dart';
import 'schema/heart_rog_record.dart';
import 'schema/herbal_record.dart';
import 'schema/homeopathi_record.dart';
import 'schema/kidny_record.dart';
import 'schema/leasersurgery_record.dart';
import 'schema/lever_record.dart';
import 'schema/medicine_record.dart';
import 'schema/nakkangola_record.dart';
import 'schema/neurosurgery_record.dart';
import 'schema/pails_record.dart';
import 'schema/physicalmedicine_record.dart';
import 'schema/physiotherapist_record.dart';
import 'schema/plasticsurgery_record.dart';
import 'schema/pustirog_record.dart';
import 'schema/surgery_record.dart';
import 'schema/sisurog_record.dart';
import 'schema/skinsex_record.dart';
import 'schema/snayurog_record.dart';
import 'schema/urology_record.dart';
import 'schema/gaini_record.dart';
import 'schema/hospital_record.dart';
import 'schema/diagnostic_record.dart';
import 'schema/bloodgroup_record.dart';
import 'schema/car_rent_record.dart';
import 'schema/hotel_record.dart';
import 'schema/shop_record.dart';
import 'schema/resturent_record.dart';
import 'schema/institute_record.dart';
import 'schema/bangla_record.dart';
import 'schema/english_record.dart';
import 'schema/math_record.dart';
import 'schema/physics_record.dart';
import 'schema/chemistry_record.dart';
import 'schema/biolgy_record.dart';
import 'schema/acconting_record.dart';
import 'schema/finance_record.dart';
import 'schema/ict_record.dart';
import 'schema/ielts_record.dart';
import 'schema/drawing_record.dart';
import 'schema/dance_record.dart';
import 'schema/sing_record.dart';
import 'schema/computer_record.dart';
import 'schema/driving_record.dart';
import 'schema/home_tutor_record.dart';
import 'schema/basa_vra_record.dart';
import 'schema/atm_record.dart';
import 'schema/parlar_record.dart';
import 'schema/maker_record.dart';
import 'schema/narsery_record.dart';
import 'schema/curia_record.dart';
import 'schema/job_record.dart';
import 'schema/uddokta_record.dart';
import 'schema/notification_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart' hide Order;
export 'package:firebase_core/firebase_core.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/user_details_record.dart';
export 'schema/mono_rog_record.dart';
export 'schema/user_record.dart';
export 'schema/arthopedic_record.dart';
export 'schema/azma_bokkhobedhi_record.dart';
export 'schema/betha_rog_record.dart';
export 'schema/blood_rog_record.dart';
export 'schema/burn_plastic_record.dart';
export 'schema/cancer_record.dart';
export 'schema/dentist_record.dart';
export 'schema/diabetis_hormon_record.dart';
export 'schema/eye_record.dart';
export 'schema/heart_rog_record.dart';
export 'schema/herbal_record.dart';
export 'schema/homeopathi_record.dart';
export 'schema/kidny_record.dart';
export 'schema/leasersurgery_record.dart';
export 'schema/lever_record.dart';
export 'schema/medicine_record.dart';
export 'schema/nakkangola_record.dart';
export 'schema/neurosurgery_record.dart';
export 'schema/pails_record.dart';
export 'schema/physicalmedicine_record.dart';
export 'schema/physiotherapist_record.dart';
export 'schema/plasticsurgery_record.dart';
export 'schema/pustirog_record.dart';
export 'schema/surgery_record.dart';
export 'schema/sisurog_record.dart';
export 'schema/skinsex_record.dart';
export 'schema/snayurog_record.dart';
export 'schema/urology_record.dart';
export 'schema/gaini_record.dart';
export 'schema/hospital_record.dart';
export 'schema/diagnostic_record.dart';
export 'schema/bloodgroup_record.dart';
export 'schema/car_rent_record.dart';
export 'schema/hotel_record.dart';
export 'schema/shop_record.dart';
export 'schema/resturent_record.dart';
export 'schema/institute_record.dart';
export 'schema/bangla_record.dart';
export 'schema/english_record.dart';
export 'schema/math_record.dart';
export 'schema/physics_record.dart';
export 'schema/chemistry_record.dart';
export 'schema/biolgy_record.dart';
export 'schema/acconting_record.dart';
export 'schema/finance_record.dart';
export 'schema/ict_record.dart';
export 'schema/ielts_record.dart';
export 'schema/drawing_record.dart';
export 'schema/dance_record.dart';
export 'schema/sing_record.dart';
export 'schema/computer_record.dart';
export 'schema/driving_record.dart';
export 'schema/home_tutor_record.dart';
export 'schema/basa_vra_record.dart';
export 'schema/atm_record.dart';
export 'schema/parlar_record.dart';
export 'schema/maker_record.dart';
export 'schema/narsery_record.dart';
export 'schema/curia_record.dart';
export 'schema/job_record.dart';
export 'schema/uddokta_record.dart';
export 'schema/notification_record.dart';

/// Functions to query UserDetailsRecords (as a Stream and as a Future).
Future<int> queryUserDetailsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserDetailsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserDetailsRecord>> queryUserDetailsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserDetailsRecord.collection,
      UserDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserDetailsRecord>> queryUserDetailsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserDetailsRecord.collection,
      UserDetailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MonoRogRecords (as a Stream and as a Future).
Future<int> queryMonoRogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MonoRogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MonoRogRecord>> queryMonoRogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MonoRogRecord.collection,
      MonoRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MonoRogRecord>> queryMonoRogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MonoRogRecord.collection,
      MonoRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UserRecords (as a Stream and as a Future).
Future<int> queryUserRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UserRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UserRecord>> queryUserRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UserRecord>> queryUserRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UserRecord.collection,
      UserRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ArthopedicRecords (as a Stream and as a Future).
Future<int> queryArthopedicRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ArthopedicRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ArthopedicRecord>> queryArthopedicRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ArthopedicRecord.collection,
      ArthopedicRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ArthopedicRecord>> queryArthopedicRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ArthopedicRecord.collection,
      ArthopedicRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AzmaBokkhobedhiRecords (as a Stream and as a Future).
Future<int> queryAzmaBokkhobedhiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AzmaBokkhobedhiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AzmaBokkhobedhiRecord>> queryAzmaBokkhobedhiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AzmaBokkhobedhiRecord.collection,
      AzmaBokkhobedhiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AzmaBokkhobedhiRecord>> queryAzmaBokkhobedhiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AzmaBokkhobedhiRecord.collection,
      AzmaBokkhobedhiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BethaRogRecords (as a Stream and as a Future).
Future<int> queryBethaRogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BethaRogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BethaRogRecord>> queryBethaRogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BethaRogRecord.collection,
      BethaRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BethaRogRecord>> queryBethaRogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BethaRogRecord.collection,
      BethaRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BloodRogRecords (as a Stream and as a Future).
Future<int> queryBloodRogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BloodRogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BloodRogRecord>> queryBloodRogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BloodRogRecord.collection,
      BloodRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BloodRogRecord>> queryBloodRogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BloodRogRecord.collection,
      BloodRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BurnPlasticRecords (as a Stream and as a Future).
Future<int> queryBurnPlasticRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BurnPlasticRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BurnPlasticRecord>> queryBurnPlasticRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BurnPlasticRecord.collection,
      BurnPlasticRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BurnPlasticRecord>> queryBurnPlasticRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BurnPlasticRecord.collection,
      BurnPlasticRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CancerRecords (as a Stream and as a Future).
Future<int> queryCancerRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CancerRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CancerRecord>> queryCancerRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CancerRecord.collection,
      CancerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CancerRecord>> queryCancerRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CancerRecord.collection,
      CancerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DentistRecords (as a Stream and as a Future).
Future<int> queryDentistRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DentistRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DentistRecord>> queryDentistRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DentistRecord.collection,
      DentistRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DentistRecord>> queryDentistRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DentistRecord.collection,
      DentistRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DiabetisHormonRecords (as a Stream and as a Future).
Future<int> queryDiabetisHormonRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DiabetisHormonRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DiabetisHormonRecord>> queryDiabetisHormonRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DiabetisHormonRecord.collection,
      DiabetisHormonRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DiabetisHormonRecord>> queryDiabetisHormonRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DiabetisHormonRecord.collection,
      DiabetisHormonRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EyeRecords (as a Stream and as a Future).
Future<int> queryEyeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EyeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EyeRecord>> queryEyeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EyeRecord.collection,
      EyeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EyeRecord>> queryEyeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EyeRecord.collection,
      EyeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HeartRogRecords (as a Stream and as a Future).
Future<int> queryHeartRogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HeartRogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HeartRogRecord>> queryHeartRogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HeartRogRecord.collection,
      HeartRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HeartRogRecord>> queryHeartRogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HeartRogRecord.collection,
      HeartRogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HerbalRecords (as a Stream and as a Future).
Future<int> queryHerbalRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HerbalRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HerbalRecord>> queryHerbalRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HerbalRecord.collection,
      HerbalRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HerbalRecord>> queryHerbalRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HerbalRecord.collection,
      HerbalRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HomeopathiRecords (as a Stream and as a Future).
Future<int> queryHomeopathiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HomeopathiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HomeopathiRecord>> queryHomeopathiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HomeopathiRecord.collection,
      HomeopathiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HomeopathiRecord>> queryHomeopathiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HomeopathiRecord.collection,
      HomeopathiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query KidnyRecords (as a Stream and as a Future).
Future<int> queryKidnyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      KidnyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<KidnyRecord>> queryKidnyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      KidnyRecord.collection,
      KidnyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<KidnyRecord>> queryKidnyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      KidnyRecord.collection,
      KidnyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LeasersurgeryRecords (as a Stream and as a Future).
Future<int> queryLeasersurgeryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeasersurgeryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeasersurgeryRecord>> queryLeasersurgeryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeasersurgeryRecord.collection,
      LeasersurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeasersurgeryRecord>> queryLeasersurgeryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeasersurgeryRecord.collection,
      LeasersurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query LeverRecords (as a Stream and as a Future).
Future<int> queryLeverRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      LeverRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<LeverRecord>> queryLeverRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LeverRecord.collection,
      LeverRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LeverRecord>> queryLeverRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LeverRecord.collection,
      LeverRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MedicineRecords (as a Stream and as a Future).
Future<int> queryMedicineRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MedicineRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MedicineRecord>> queryMedicineRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MedicineRecord.collection,
      MedicineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MedicineRecord>> queryMedicineRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MedicineRecord.collection,
      MedicineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NakkangolaRecords (as a Stream and as a Future).
Future<int> queryNakkangolaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NakkangolaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NakkangolaRecord>> queryNakkangolaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NakkangolaRecord.collection,
      NakkangolaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NakkangolaRecord>> queryNakkangolaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NakkangolaRecord.collection,
      NakkangolaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NeurosurgeryRecords (as a Stream and as a Future).
Future<int> queryNeurosurgeryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NeurosurgeryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NeurosurgeryRecord>> queryNeurosurgeryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NeurosurgeryRecord.collection,
      NeurosurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NeurosurgeryRecord>> queryNeurosurgeryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NeurosurgeryRecord.collection,
      NeurosurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PailsRecords (as a Stream and as a Future).
Future<int> queryPailsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PailsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PailsRecord>> queryPailsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PailsRecord.collection,
      PailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PailsRecord>> queryPailsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PailsRecord.collection,
      PailsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PhysicalmedicineRecords (as a Stream and as a Future).
Future<int> queryPhysicalmedicineRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PhysicalmedicineRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PhysicalmedicineRecord>> queryPhysicalmedicineRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PhysicalmedicineRecord.collection,
      PhysicalmedicineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PhysicalmedicineRecord>> queryPhysicalmedicineRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PhysicalmedicineRecord.collection,
      PhysicalmedicineRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PhysiotherapistRecords (as a Stream and as a Future).
Future<int> queryPhysiotherapistRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PhysiotherapistRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PhysiotherapistRecord>> queryPhysiotherapistRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PhysiotherapistRecord.collection,
      PhysiotherapistRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PhysiotherapistRecord>> queryPhysiotherapistRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PhysiotherapistRecord.collection,
      PhysiotherapistRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PlasticsurgeryRecords (as a Stream and as a Future).
Future<int> queryPlasticsurgeryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PlasticsurgeryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PlasticsurgeryRecord>> queryPlasticsurgeryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PlasticsurgeryRecord.collection,
      PlasticsurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PlasticsurgeryRecord>> queryPlasticsurgeryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PlasticsurgeryRecord.collection,
      PlasticsurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PustirogRecords (as a Stream and as a Future).
Future<int> queryPustirogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PustirogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PustirogRecord>> queryPustirogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PustirogRecord.collection,
      PustirogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PustirogRecord>> queryPustirogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PustirogRecord.collection,
      PustirogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SurgeryRecords (as a Stream and as a Future).
Future<int> querySurgeryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SurgeryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SurgeryRecord>> querySurgeryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SurgeryRecord.collection,
      SurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SurgeryRecord>> querySurgeryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SurgeryRecord.collection,
      SurgeryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SisurogRecords (as a Stream and as a Future).
Future<int> querySisurogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SisurogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SisurogRecord>> querySisurogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SisurogRecord.collection,
      SisurogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SisurogRecord>> querySisurogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SisurogRecord.collection,
      SisurogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SkinsexRecords (as a Stream and as a Future).
Future<int> querySkinsexRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SkinsexRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SkinsexRecord>> querySkinsexRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SkinsexRecord.collection,
      SkinsexRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SkinsexRecord>> querySkinsexRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SkinsexRecord.collection,
      SkinsexRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SnayurogRecords (as a Stream and as a Future).
Future<int> querySnayurogRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SnayurogRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SnayurogRecord>> querySnayurogRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SnayurogRecord.collection,
      SnayurogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SnayurogRecord>> querySnayurogRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SnayurogRecord.collection,
      SnayurogRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UrologyRecords (as a Stream and as a Future).
Future<int> queryUrologyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UrologyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UrologyRecord>> queryUrologyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UrologyRecord.collection,
      UrologyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UrologyRecord>> queryUrologyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UrologyRecord.collection,
      UrologyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query GainiRecords (as a Stream and as a Future).
Future<int> queryGainiRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      GainiRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<GainiRecord>> queryGainiRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      GainiRecord.collection,
      GainiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<GainiRecord>> queryGainiRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      GainiRecord.collection,
      GainiRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HospitalRecords (as a Stream and as a Future).
Future<int> queryHospitalRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HospitalRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HospitalRecord>> queryHospitalRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HospitalRecord.collection,
      HospitalRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HospitalRecord>> queryHospitalRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HospitalRecord.collection,
      HospitalRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DiagnosticRecords (as a Stream and as a Future).
Future<int> queryDiagnosticRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DiagnosticRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DiagnosticRecord>> queryDiagnosticRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DiagnosticRecord.collection,
      DiagnosticRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DiagnosticRecord>> queryDiagnosticRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DiagnosticRecord.collection,
      DiagnosticRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BloodgroupRecords (as a Stream and as a Future).
Future<int> queryBloodgroupRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BloodgroupRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BloodgroupRecord>> queryBloodgroupRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BloodgroupRecord.collection,
      BloodgroupRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BloodgroupRecord>> queryBloodgroupRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BloodgroupRecord.collection,
      BloodgroupRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CarRentRecords (as a Stream and as a Future).
Future<int> queryCarRentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CarRentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CarRentRecord>> queryCarRentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CarRentRecord.collection,
      CarRentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CarRentRecord>> queryCarRentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CarRentRecord.collection,
      CarRentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HotelRecords (as a Stream and as a Future).
Future<int> queryHotelRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HotelRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HotelRecord>> queryHotelRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HotelRecord.collection,
      HotelRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HotelRecord>> queryHotelRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HotelRecord.collection,
      HotelRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ShopRecords (as a Stream and as a Future).
Future<int> queryShopRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ShopRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ShopRecord>> queryShopRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ShopRecord.collection,
      ShopRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ShopRecord>> queryShopRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ShopRecord.collection,
      ShopRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ResturentRecords (as a Stream and as a Future).
Future<int> queryResturentRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ResturentRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ResturentRecord>> queryResturentRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ResturentRecord.collection,
      ResturentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ResturentRecord>> queryResturentRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ResturentRecord.collection,
      ResturentRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query InstituteRecords (as a Stream and as a Future).
Future<int> queryInstituteRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      InstituteRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<InstituteRecord>> queryInstituteRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      InstituteRecord.collection,
      InstituteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<InstituteRecord>> queryInstituteRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      InstituteRecord.collection,
      InstituteRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BanglaRecords (as a Stream and as a Future).
Future<int> queryBanglaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BanglaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BanglaRecord>> queryBanglaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BanglaRecord.collection,
      BanglaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BanglaRecord>> queryBanglaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BanglaRecord.collection,
      BanglaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query EnglishRecords (as a Stream and as a Future).
Future<int> queryEnglishRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      EnglishRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<EnglishRecord>> queryEnglishRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      EnglishRecord.collection,
      EnglishRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<EnglishRecord>> queryEnglishRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      EnglishRecord.collection,
      EnglishRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MathRecords (as a Stream and as a Future).
Future<int> queryMathRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MathRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MathRecord>> queryMathRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MathRecord.collection,
      MathRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MathRecord>> queryMathRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MathRecord.collection,
      MathRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query PhysicsRecords (as a Stream and as a Future).
Future<int> queryPhysicsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      PhysicsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<PhysicsRecord>> queryPhysicsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PhysicsRecord.collection,
      PhysicsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PhysicsRecord>> queryPhysicsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PhysicsRecord.collection,
      PhysicsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ChemistryRecords (as a Stream and as a Future).
Future<int> queryChemistryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ChemistryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ChemistryRecord>> queryChemistryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChemistryRecord.collection,
      ChemistryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChemistryRecord>> queryChemistryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChemistryRecord.collection,
      ChemistryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BiolgyRecords (as a Stream and as a Future).
Future<int> queryBiolgyRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BiolgyRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BiolgyRecord>> queryBiolgyRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BiolgyRecord.collection,
      BiolgyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BiolgyRecord>> queryBiolgyRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BiolgyRecord.collection,
      BiolgyRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AccontingRecords (as a Stream and as a Future).
Future<int> queryAccontingRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AccontingRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AccontingRecord>> queryAccontingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AccontingRecord.collection,
      AccontingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AccontingRecord>> queryAccontingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AccontingRecord.collection,
      AccontingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FinanceRecords (as a Stream and as a Future).
Future<int> queryFinanceRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FinanceRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FinanceRecord>> queryFinanceRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FinanceRecord.collection,
      FinanceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FinanceRecord>> queryFinanceRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FinanceRecord.collection,
      FinanceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IctRecords (as a Stream and as a Future).
Future<int> queryIctRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IctRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IctRecord>> queryIctRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IctRecord.collection,
      IctRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IctRecord>> queryIctRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IctRecord.collection,
      IctRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query IeltsRecords (as a Stream and as a Future).
Future<int> queryIeltsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      IeltsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<IeltsRecord>> queryIeltsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      IeltsRecord.collection,
      IeltsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<IeltsRecord>> queryIeltsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      IeltsRecord.collection,
      IeltsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DrawingRecords (as a Stream and as a Future).
Future<int> queryDrawingRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DrawingRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DrawingRecord>> queryDrawingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DrawingRecord.collection,
      DrawingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DrawingRecord>> queryDrawingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DrawingRecord.collection,
      DrawingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DanceRecords (as a Stream and as a Future).
Future<int> queryDanceRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DanceRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DanceRecord>> queryDanceRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DanceRecord.collection,
      DanceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DanceRecord>> queryDanceRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DanceRecord.collection,
      DanceRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query SingRecords (as a Stream and as a Future).
Future<int> querySingRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      SingRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<SingRecord>> querySingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SingRecord.collection,
      SingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SingRecord>> querySingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SingRecord.collection,
      SingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ComputerRecords (as a Stream and as a Future).
Future<int> queryComputerRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ComputerRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ComputerRecord>> queryComputerRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ComputerRecord.collection,
      ComputerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ComputerRecord>> queryComputerRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ComputerRecord.collection,
      ComputerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query DrivingRecords (as a Stream and as a Future).
Future<int> queryDrivingRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      DrivingRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<DrivingRecord>> queryDrivingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DrivingRecord.collection,
      DrivingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DrivingRecord>> queryDrivingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DrivingRecord.collection,
      DrivingRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query HomeTutorRecords (as a Stream and as a Future).
Future<int> queryHomeTutorRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      HomeTutorRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<HomeTutorRecord>> queryHomeTutorRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      HomeTutorRecord.collection,
      HomeTutorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<HomeTutorRecord>> queryHomeTutorRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      HomeTutorRecord.collection,
      HomeTutorRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query BasaVraRecords (as a Stream and as a Future).
Future<int> queryBasaVraRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      BasaVraRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<BasaVraRecord>> queryBasaVraRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      BasaVraRecord.collection,
      BasaVraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<BasaVraRecord>> queryBasaVraRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      BasaVraRecord.collection,
      BasaVraRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query AtmRecords (as a Stream and as a Future).
Future<int> queryAtmRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      AtmRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<AtmRecord>> queryAtmRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AtmRecord.collection,
      AtmRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AtmRecord>> queryAtmRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AtmRecord.collection,
      AtmRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query ParlarRecords (as a Stream and as a Future).
Future<int> queryParlarRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ParlarRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ParlarRecord>> queryParlarRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ParlarRecord.collection,
      ParlarRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ParlarRecord>> queryParlarRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ParlarRecord.collection,
      ParlarRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query MakerRecords (as a Stream and as a Future).
Future<int> queryMakerRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      MakerRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<MakerRecord>> queryMakerRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      MakerRecord.collection,
      MakerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<MakerRecord>> queryMakerRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      MakerRecord.collection,
      MakerRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NarseryRecords (as a Stream and as a Future).
Future<int> queryNarseryRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NarseryRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NarseryRecord>> queryNarseryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NarseryRecord.collection,
      NarseryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NarseryRecord>> queryNarseryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NarseryRecord.collection,
      NarseryRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query CuriaRecords (as a Stream and as a Future).
Future<int> queryCuriaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      CuriaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<CuriaRecord>> queryCuriaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CuriaRecord.collection,
      CuriaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CuriaRecord>> queryCuriaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CuriaRecord.collection,
      CuriaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query JobRecords (as a Stream and as a Future).
Future<int> queryJobRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      JobRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<JobRecord>> queryJobRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      JobRecord.collection,
      JobRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<JobRecord>> queryJobRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      JobRecord.collection,
      JobRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query UddoktaRecords (as a Stream and as a Future).
Future<int> queryUddoktaRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      UddoktaRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<UddoktaRecord>> queryUddoktaRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UddoktaRecord.collection,
      UddoktaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UddoktaRecord>> queryUddoktaRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UddoktaRecord.collection,
      UddoktaRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query NotificationRecords (as a Stream and as a Future).
Future<int> queryNotificationRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      NotificationRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<NotificationRecord>> queryNotificationRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      NotificationRecord.collection,
      NotificationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<NotificationRecord>> queryNotificationRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      NotificationRecord.collection,
      NotificationRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count!);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Filter filterIn(String field, List? list) => (list?.isEmpty ?? true)
    ? Filter(field, whereIn: null)
    : Filter(field, whereIn: list);

Filter filterArrayContainsAny(String field, List? list) =>
    (list?.isEmpty ?? true)
        ? Filter(field, arrayContainsAny: null)
        : Filter(field, arrayContainsAny: list);

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UserDetailsRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    currentUserDocument = await UserDetailsRecord.getDocumentOnce(userRecord);
    return;
  }

  final userData = createUserDetailsRecordData(
    email: user.email ??
        FirebaseAuth.instance.currentUser?.email ??
        user.providerData.firstOrNull?.email,
    displayName:
        user.displayName ?? FirebaseAuth.instance.currentUser?.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
  currentUserDocument =
      UserDetailsRecord.getDocumentFromData(userData, userRecord);
}

Future updateUserDocument({String? email}) async {
  await currentUserDocument?.reference
      .update(createUserDetailsRecordData(email: email));
}
