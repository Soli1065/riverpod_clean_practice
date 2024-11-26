import 'package:freezed_annotation/freezed_annotation.dart';


part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class Post with _$Post{

  factory Post({
    required int userId,
    required int id,
    required String title,
    required String body
}) = _Post;


  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

}