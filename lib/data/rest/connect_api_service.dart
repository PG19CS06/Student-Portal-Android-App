import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:student_portal_app/app_constants.dart';

part 'connect_api_service.chopper.dart';

@ChopperApi()
abstract class ConnectApiService extends ChopperService {
  static ConnectApiService? instance;

/*
  @Get(path: "registration")
  Future<Response> register(
      @Query("full_name") String fullName,
      @Query("mother_name") String motherName,
      @Query("mobile") String mobile,
      @Query("password") String password,
      @Query("referral_id") String referralId,
      @Query("user_referral_code") String userReferralCode,
      @Query("referred_link") String referredLink,
      @Query("firebase_id") String firebaseId);
*/

  @Get(path: "login")
  Future<Response> login(
      @Query("mobile") String mobile,
      @Query("password") String password,
      @Query("firebase_id") String firebaseId);


  static ConnectApiService? getApiService(String token, Function tokenNotifier,
      {bool force = false}) {
    if (null == instance || force) {
      debugPrint("Creating API Service with token $token");
      ChopperClient client = ChopperClient(
        // # - change baseUrl in app_constants.dart
        baseUrl: baseUrl,
        services: [_$ConnectApiService()], converter: JsonConverter(),
        interceptors: [
          (Request request) async {
            String params = "";
            request.parameters.forEach((key, value) {
              params += "$key=$value&";
            });
            debugPrint("Chopper token: $token");
            if (request.method == HttpMethod.Post) {
              chopperLogger.shout("POST=> ${request.baseUrl}/${request.url}?$params");
            }

            if (request.method == HttpMethod.Get) {
              chopperLogger.shout("GET=> ${request.baseUrl}/${request.url}?$params");
            }
            return request;
          },
          HeadersInterceptor({'Token': token}),
          (Response response) async {
            if (response.statusCode == 404) {
              chopperLogger.severe('404 NOT FOUND');
            } else {
              chopperLogger.shout("Response=> ${response.body}");
              if (jsonDecode(response.bodyString)["message"] ==
                  "session_timeout") {
                tokenNotifier();
              }
            }
            return response;
          },
        ],
      );
      instance = _$ConnectApiService(client);
    }
    return instance;
  }
}
