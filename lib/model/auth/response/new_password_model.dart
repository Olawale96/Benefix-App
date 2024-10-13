import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'new_password_model.g.dart';

@JsonSerializable()
class NewPasswordModel {
    @JsonKey(name: "message")
    String? message;

    NewPasswordModel({
        this.message,
    });

    factory NewPasswordModel.fromJson(Map<String, dynamic> json) => _$NewPasswordModelFromJson(json);

    Map<String, dynamic> toJson() => _$NewPasswordModelToJson(this);
}
