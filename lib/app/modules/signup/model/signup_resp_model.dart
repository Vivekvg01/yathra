class SignUpRespModel {
  SignUpRespModel({
    required this.status,
    required this.user,
  });

  String status;
  User user;

  factory SignUpRespModel.fromJson(Map<String, dynamic> json) =>
      SignUpRespModel(
        status: json["status"],
        user: User.fromJson(json["user"]),
      );
}

class User {
  User({
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.dob,
    this.emailVerified,
    this.isPhoneVerified,
    this.isActive,
    this.id,
  });

  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? dob;
  bool? emailVerified;
  bool? isPhoneVerified;
  bool? isActive;
  int? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        dob: json["dob"],
        emailVerified: json["emailVerified"],
        isPhoneVerified: json["isPhoneVerified"],
        isActive: json["isActive"],
        id: json["id"],
      );
}
