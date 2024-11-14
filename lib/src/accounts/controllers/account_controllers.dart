import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../domain/account.dart';
import '../domain/category.dart';
import '../service/account_service.dart';
import '../service/category_service.dart';

part 'account_controllers.g.dart';

@riverpod
Stream<List<Account>> accounts(Ref ref) =>
    ref.watch(accountServiceProvider).getAccountsStream();

@riverpod
bool accountSelected(Ref ref) =>
    ref.watch(accountsProvider).valueOrNull.isNotBlank;

@riverpod
Stream<List<Category>> categories(Ref ref) =>
    ref.watch(categoryServiceProvider).getCategoriesStream();

@riverpod
bool categorySelected(Ref ref) =>
    ref.watch(categoriesProvider).valueOrNull.isNotBlank;
