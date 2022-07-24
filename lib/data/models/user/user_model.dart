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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['session_key'] = this.token;
    data['full_name'] = this.fullName;
    return data;
  }
}
