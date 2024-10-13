import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    LoginModel({
        this.message,
        this.data,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

    Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "username")
    String? username;
    @JsonKey(name: "token")
    String? token;

    Data({
        this.id,
        this.username,
        this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
