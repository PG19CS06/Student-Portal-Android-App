class UserModel {
  String? fullName;
  int? userId;
  String? token;

  UserModel(this.fullName, this.userId, this.token);

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = int.parse("${json['user_id']}");
    fullName = json['full_name'];
    token = json['session_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['session_key'] = token;
    data['full_name'] = fullName;
    return data;
  }
}
