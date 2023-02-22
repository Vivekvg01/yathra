class LoginRespModel {
  LoginRespModel({
    this.id,
    this.ttl,
    this.created,
    this.userId,
  });

  String? id;
  int? ttl;
  DateTime? created;
  int? userId;

  factory LoginRespModel.fromJson(Map<String, dynamic> json) => LoginRespModel(
        id: json["id"],
        ttl: json["ttl"],
        created: DateTime.parse(json["created"]),
        userId: json["userId"],
      );
}
