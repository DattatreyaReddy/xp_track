import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class IsarConnectionModule {
  static Future<Isar> provideIsarClient() async {
    final dir = !kIsWeb ? (await getApplicationDocumentsDirectory()).path : "";
    return Isar.open(
      [],
      directory: dir,
      name: "XpTrack",
    );
  }
}
