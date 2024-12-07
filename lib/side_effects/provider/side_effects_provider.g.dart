// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_effects_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoListNotifierHash() => r'f2889cd105c3a21e00156dcd576cbf84f5ff6b1d';

/// See also [TodoListNotifier].
@ProviderFor(TodoListNotifier)
final todoListNotifierProvider =
    AutoDisposeAsyncNotifierProvider<TodoListNotifier, List<String>>.internal(
  TodoListNotifier.new,
  name: r'todoListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoListNotifier = AutoDisposeAsyncNotifier<List<String>>;
String _$userNotifierHash() => r'7269e21be0d8f638808349b81e6812fa2f42f5f6';

/// See also [UserNotifier].
@ProviderFor(UserNotifier)
final userNotifierProvider =
    AutoDisposeAsyncNotifierProvider<UserNotifier, User>.internal(
  UserNotifier.new,
  name: r'userNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserNotifier = AutoDisposeAsyncNotifier<User>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
