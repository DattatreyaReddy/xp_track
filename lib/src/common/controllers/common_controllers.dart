import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../storage/local/drift_client.dart';

part 'common_controllers.g.dart';

@riverpod
SharedPreferences sharedPreferences(ref) => throw UnimplementedError();

@riverpod
DriftDb driftDb(DriftDbRef ref) => throw UnimplementedError();
