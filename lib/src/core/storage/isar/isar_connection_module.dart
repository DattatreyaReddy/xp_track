import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../../accounts/domain/account.dart';
import '../../../accounts/domain/category.dart';

abstract class IsarConnectionModule {
  static Future<Isar> provideIsarClient() async {
    final dir = !kIsWeb ? (await getApplicationDocumentsDirectory()).path : "";
    return Isar.open(
      [AccountSchema, CategorySchema],
      directory: dir,
      name: "XpTrack",
    );
  }
}
