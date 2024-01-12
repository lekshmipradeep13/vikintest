// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    int success;
    Data data;
    int userId;
    String role;
    String message;
    dynamic error;
    String username;

    LoginResponseModel({
        required this.success,
        required this.data,
        required this.userId,
        required this.role,
        required this.message,
        required this.error,
        required this.username,
    });

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
        userId: json["user_id"],
        role: json["role"],
        message: json["message"],
        error: json["error"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
        "user_id": userId,
        "role": role,
        "message": message,
        "error": error,
        "username": username,
    };
}

class Data {
    String refresh;
    String access;
    int userId;
    String role;
    String username;
    String email;
    DateTime lastLogin;

    Data({
        required this.refresh,
        required this.access,
        required this.userId,
        required this.role,
        required this.username,
        required this.email,
        required this.lastLogin,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        refresh: json["refresh"],
        access: json["access"],
        userId: json["user_id"],
        role: json["role"],
        username: json["username"],
        email: json["email"],
        lastLogin: DateTime.parse(json["last_login"]),
    );

    Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "user_id": userId,
        "role": role,
        "username": username,
        "email": email,
        "last_login": lastLogin.toIso8601String(),
    };
}
