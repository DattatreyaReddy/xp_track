import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'common_controllers.g.dart';

@riverpod
SharedPreferences sharedPreferences(ref) => throw UnimplementedError();

@riverpod
Isar isarClient(IsarClientRef ref) => throw UnimplementedError();
