import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/common/controllers/common_controllers.dart';
import 'src/common/storage/local/drift_client.dart';
import 'src/xp_track.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final driftDb = DriftDb();

  Future<Override> sharedPreferenceFuture() async => sharedPreferencesProvider
      .overrideWithValue(await SharedPreferences.getInstance());

  Future<Override> driftDbFuture() async =>
      driftDbProvider.overrideWithValue(driftDb);

  List<Override> overrideList = await Future.wait([
    sharedPreferenceFuture(),
    driftDbFuture(),
  ]);
  runApp(ProviderScope(overrides: overrideList, child: const XpTrack()));
}
