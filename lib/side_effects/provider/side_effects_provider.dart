import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_practice/side_effects/model/user/user.dart';
import 'package:http/http.dart' as http;

part 'side_effects_provider.g.dart';



@riverpod
class TodoListNotifier extends _$TodoListNotifier{

  @override
  Future<List<String>> build()async{
    await Future.delayed(Duration.zero);
    return ['a', 'b'];
  }
}


@riverpod
class UserNotifier extends _$UserNotifier{
  
  
  @override
  Future<User> build() async{
    final response = await http.get(Uri.https('reqres.in', '/api/users/2'));
    final json = jsonDecode(response.body) as Map<String,dynamic>;
    print('this is the response body from api call GET user===> ${response.body}');
    return User.fromJson(json);
  }

  Future<void> addUser(User user) async{
    final response = await http.post(Uri.https('reqres.in', '/api/users'));
    final json = jsonDecode(response.body) as Map<String,dynamic>;
    print('this is body response in create user POST====> ${response.body}');

    ref.invalidateSelf();
    await future;
  }

}