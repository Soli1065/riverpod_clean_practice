

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_practice/side_effects/provider/side_effects_provider.dart';

class SideEffectsScreen extends ConsumerWidget{
  const SideEffectsScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final AsyncValue<List<String>> todoList = ref.watch(todoListNotifierProvider);

    return Scaffold(
      body: Center(child: switch (todoList){
        AsyncData(:final value) => Text('${value[0]}  ${value[1]}'),
        AsyncError() => Text('error'),
        _=> const CircularProgressIndicator()
      }),
    );


    // final userProvider = ref.watch(userNotifierProvider);
  }
}