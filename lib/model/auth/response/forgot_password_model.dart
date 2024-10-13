import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'forgot_password_model.g.dart';

@JsonSerializable()
class ForgotPasswordModel {
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    ForgotPasswordModel({
        this.message,
        this.data,
    });

    factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) => _$ForgotPasswordModelFromJson(json);

    Map<String, dynamic> toJson() => _$ForgotPasswordModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "username")
    String? username;
    @JsonKey(name: "email")
    String? email;
    @JsonKey(name: "reset_token")
    String? resetToken;
    @JsonKey(name: "created_at")
    DateTime? createdAt;

    Data({
        this.id,
        this.username,
        this.email,
        this.resetToken,
        this.createdAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
