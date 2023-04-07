class Login_model {
  bool? status;
  String? message;
  Data? data;

  Login_model({this.status, this.message, this.data});

  Login_model.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  User? user;

  Data({this.accessToken, this.tokenType, this.expiresIn, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? phone;
  Null? address;
  Null? image;
  String? role;
  int? isPhoneVerified;
  int? phoneVerificationOtpCode;
  int? passwordResetOtpCode;
  int? passwordResetOtpVerified;
  int? passwordResetOtpExpired;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
        this.name,
        this.phone,
        this.address,
        this.image,
        this.role,
        this.isPhoneVerified,
        this.phoneVerificationOtpCode,
        this.passwordResetOtpCode,
        this.passwordResetOtpVerified,
        this.passwordResetOtpExpired,
        this.createdAt,
        this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    image = json['image'];
    role = json['role'];
    isPhoneVerified = json['is_phone_verified'];
    phoneVerificationOtpCode = json['phone_verification_otp_code'];
    passwordResetOtpCode = json['password_reset_otp_code'];
    passwordResetOtpVerified = json['password_reset_otp_verified'];
    passwordResetOtpExpired = json['password_reset_otp_expired'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['image'] = this.image;
    data['role'] = this.role;
    data['is_phone_verified'] = this.isPhoneVerified;
    data['phone_verification_otp_code'] = this.phoneVerificationOtpCode;
    data['password_reset_otp_code'] = this.passwordResetOtpCode;
    data['password_reset_otp_verified'] = this.passwordResetOtpVerified;
    data['password_reset_otp_expired'] = this.passwordResetOtpExpired;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
