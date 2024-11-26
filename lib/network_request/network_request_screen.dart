import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_practice/network_request/model/activity.dart';
import 'package:riverpod_clean_practice/network_request/network_request_provider.dart';

import 'model/post.dart';



@riverpod
Future<String> myFunction(Ref ref) async{
  await Future.delayed(Duration(seconds: 3));
  return 'ss';
}

class NetworkRequestScreen extends StatelessWidget {
  const NetworkRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (context, ref, child){

            // final AsyncValue<Activity> activity = ref.watch(activityProvider);

            final AsyncValue<Post> post = ref.watch(postProvider);

            return Center(
              child: switch (post){
                AsyncData(:final value) => Text("This is the value: ${value.title} \n\n body: ${value.body}"),
                AsyncError() => Text("Error!!!"),
                _=> const CircularProgressIndicator()
              },
            );
          }
      ),
    );
  }
}
