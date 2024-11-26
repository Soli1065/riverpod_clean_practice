import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_value.g.dart';


@riverpod
String myNewValue(Ref ref){
  return "This is my new value stored here initially!!!";
}


class NewValueScreen extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(myNewValueProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Storing Value With Riverpod'),
        
      ),
      body: Center(child: Text(value),),
    );
  }
}