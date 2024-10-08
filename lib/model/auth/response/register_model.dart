import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    Data? data;

    RegisterModel({
        this.message,
        this.data,
    });

    factory RegisterModel.fromJson(Map<String, dynamic> json) => _$RegisterModelFromJson(json);

    Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "username")
    String? username;

    Data({
        this.id,
        this.username,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}
