import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/common/controllers/common_controllers.dart';
import 'src/core/storage/isar/isar_connection_module.dart';
import 'src/xp_track.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<Override> sharedPreferenceFuture() async => sharedPreferencesProvider
      .overrideWithValue(await SharedPreferences.getInstance());

  Future<Override> isarClientFuture() async => isarClientProvider
      .overrideWithValue(await IsarConnectionModule.provideIsarClient());

  List<Override> overrideList = await Future.wait([
    sharedPreferenceFuture(),
    isarClientFuture(),
  ]);
  runApp(ProviderScope(overrides: overrideList, child: const XpTrack()));
}
