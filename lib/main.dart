import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tekartik_app_flutter_sembast/sembast.dart';

import 'src/common/controllers/common_controllers.dart';
import 'src/xp_track.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future<Override> sharedPreferenceFuture() async => sharedPreferencesProvider
      .overrideWithValue(await SharedPreferences.getInstance());

  WidgetsFlutterBinding.ensureInitialized();
  var dbFactory = getDatabaseFactory(rootPath: "xp-track");
  Future<Override> dbFuture() async => dbProvider.overrideWithValue(
      await dbFactory.openDatabase("xp-track.db", version: 1));
  Future<Override> packageInfoFuture() async =>
      packageInfoProvider.overrideWithValue(await PackageInfo.fromPlatform());

  List<Override> overrideList = await Future.wait([
    sharedPreferenceFuture(),
    dbFuture(),
    packageInfoFuture(),
  ]);
  runApp(ProviderScope(overrides: overrideList, child: const XpTrack()));
}
