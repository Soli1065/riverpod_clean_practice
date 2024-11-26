import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.g.dart';
part 'activity.freezed.dart';

@freezed
class Activity with _$Activity{

  factory Activity({
    required String key,
    required String type,
    required String activity,
    required int participants,
    required double price
}) = _Activity;


  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);


}