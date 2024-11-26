import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'model/activity.dart';
import 'model/post.dart';

part 'network_request_provider.g.dart';


@riverpod
Future<Activity> activity(Ref ref) async{
  final result = await http.get(Uri.https('boardapi.com', '/api/activity'));
  final json = jsonDecode(result.body) as Map<String, dynamic>;
  return Activity.fromJson(json);
}



@riverpod
Future<Post> post(Ref ref) async {
  
  final response = await http.get(Uri.https('jsonplaceholder.typicode.com', '/posts/5'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;

  await Future.delayed(Duration(seconds: 3));
  return Post.fromJson(json);
  
}