import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../dto/account_dto.dart';
import '../dto/category_dto.dart';
import '../service/account_service.dart';
import '../service/category_service.dart';

part 'account_controllers.g.dart';

@riverpod
Stream<List<AccountDto>> accounts(AccountsRef ref) =>
    ref.watch(accountServiceProvider).getAccountsStream();

@riverpod
bool accountSelected(AccountSelectedRef ref) =>
    ref.watch(accountsProvider).valueOrNull.isNotBlank;

@riverpod
Stream<List<CategoryDto>> categories(CategoriesRef ref) =>
    ref.watch(categoryServiceProvider).getCategoriesStream();

@riverpod
bool categorySelected(CategorySelectedRef ref) =>
    ref.watch(categoriesProvider).valueOrNull.isNotBlank;
