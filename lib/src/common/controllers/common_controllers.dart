import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

part 'common_controllers.g.dart';

@riverpod
SharedPreferences sharedPreferences(Ref ref) => throw UnimplementedError();

@riverpod
Database db(Ref ref) => throw UnimplementedError("");

@riverpod
PackageInfo packageInfo(Ref ref) => throw UnimplementedError();

@Riverpod(keepAlive: true)
class AppUpdateCheck extends _$AppUpdateCheck {
  @override
  bool build() => false;

  bool checkCompleted() => state = true;
}
