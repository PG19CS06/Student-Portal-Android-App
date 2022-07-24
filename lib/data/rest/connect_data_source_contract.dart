import 'package:student_portal_app/data/models/user/user_model.dart';

import 'data_or_exception.dart';

abstract class ConnectDataSource {
/*
  Future<DataOrException<bool>> register(
      String fullName, String motherName, String mobile, String password);
*/
/*
  Future<DataOrException<UserModel>> register(
      String fullName,
      String motherName,
      String mobile,
      String password,
      String referralId,
      String userReferralCode,
      String referredLink,
      String firebaseId);
*/

  Future<DataOrException<UserModel>> login(
      String mobile, String password, String firebaseId);


}
