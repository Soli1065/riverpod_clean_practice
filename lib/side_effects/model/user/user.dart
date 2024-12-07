import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class User with _$User{

  factory User({
    required Data data,
    required Support support
}) = _User;


  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
}

@freezed
class Data with _$Data{
  factory Data({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar
}) = _Data;

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);
}


@freezed
class Support with _$Support{
  factory Support({
    required String url,
    required String text
}) = _Support;


  factory Support.fromJson(Map<String,dynamic> json) => _$SupportFromJson(json);

}
