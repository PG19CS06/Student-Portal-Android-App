import 'package:flutter/material.dart';

class PushNotificationModel {
  String? title;
  String? message;
  String? type;
  String? image;
  int? notificationId;
  int? detailId;
  int? detailParentId;

/*
  PushNotificationModel(
      {this.title,
      this.message,
      this.type,
      this.image,
      this.notificationId,
      this.detailId,
      this.detailParentId});
*/

  PushNotificationModel(
    this.title,
    this.message,
    this.type,
    this.image,
    this.notificationId,
    this.detailId,
    this.detailParentId,
  );

  PushNotificationModel.fromJson(Map<String, dynamic> json) {
    debugPrint("Parsing $json");

    title = json['title'];
    message = json['message'];
    type = json['type'];
    image = json['image'];
    notificationId = int.parse("${json['notification_id']}");
    detailId = int.parse("${json['detail_id']}");
    detailParentId = int.parse("${json['detail_parent_id']}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['message'] = message;
    data['type'] = type;
    data['image'] = image;
    data['notification_id'] = notificationId;
    data['detail_id'] = detailId;
    data['detail_parent_id'] = detailParentId;
    return data;
  }

  @override
  String toString() {
    return '{"detail_id": $detailId, "notification_id": $notificationId, "type": "$type", "image": "$image", "title": "$title", "message": "$message", "detail_parent_id": $detailParentId}';
  }
}
