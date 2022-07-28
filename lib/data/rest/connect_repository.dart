
import 'package:student_portal_app/data/models/user/user_model.dart';
import 'package:student_portal_app/data/rest/data_or_exception.dart';
import 'package:student_portal_app/data/rest/remote_data_source.dart';

import 'connect_data_source_contract.dart';

class ConnectRepository extends ConnectDataSource {
  final RemoteDataSource _remoteDataSource;

  ConnectRepository(this._remoteDataSource);

  @override
  Future<DataOrException<UserModel>> login(String mobile, String password, String firebaseId) {
    return _remoteDataSource.login(mobile, password, firebaseId);
  }

/*
  @override
  Future<DataOrException<UserModel>> login(
      String mobile, String password, String firebaseId) {
    return _remoteDataSource.login(mobile, password, firebaseId);
  }
*/

}
