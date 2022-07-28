import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:student_portal_app/data/models/user/user_model.dart';

import 'package:student_portal_app/data/rest/data_or_exception.dart';

import 'connect_api_service.dart';
import 'connect_data_source_contract.dart';

class RemoteDataSource extends ConnectDataSource {
  final ConnectApiService _apiService;

  RemoteDataSource(this._apiService);

  @override
  Future<DataOrException<UserModel>> login(String mobile, String password, String firebaseId) async {
    debugPrint("RemoteDataSource - Login");
    try {
      final response = await _apiService.login(mobile, password, firebaseId);
      if (response.isSuccessful) {
        final body = jsonDecode(response.bodyString);
        debugPrint(body);
        if (body["status"]) {
          return DataOrException(
              UserModel.fromJson(body["data"]), null, body["message"]);
        } else {
          return DataOrException(null, null, body["message"]);
        }
      } else {
        return DataOrException(null, ApiError(), null);
      }
    } catch (ex) {
      debugPrint(ex.toString());
      return DataOrException(null, NoInternet(), null);
    }
  }

}
