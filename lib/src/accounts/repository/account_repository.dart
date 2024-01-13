import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/controllers/common_controllers.dart';
import '../../core/storage/isar/repository/generic_repository.dart';
import '../domain/account.dart';

part 'account_repository.g.dart';

class AccountRepository extends GenericRepository<Account> {
  AccountRepository(super.isar);
}

@riverpod
AccountRepository accountRepository(AccountRepositoryRef ref) {
  return AccountRepository(ref.watch(isarClientProvider));
}
