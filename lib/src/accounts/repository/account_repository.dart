import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/controllers/common_controllers.dart';
import '../../core/storage/isar/repository/generic_repository.dart';
import '../domain/account.dart';

part 'account_repository.g.dart';

class AccountRepository extends GenericRepository<Account> {
  AccountRepository(super.isar);

  Stream<List<Account>> getAllOrderByOrderNumber() => isar.accounts
      .filter()
      .isDeletedEqualTo(false)
      .sortByOrderNumber()
      .watch(fireImmediately: true);

  Future<void> swapAccountsOrder(int accountId1, int accountId2) async {
    final account1 = await isar.accounts.get(accountId1);
    final account2 = await isar.accounts.get(accountId2);
    if (account1 == null || account2 == null) {
      return;
    }
    await isar.writeTxn(() async {
      // Swap order numbers of the accounts
      final tempOrderNumber = account1.orderNumber;
      account1.orderNumber = account2.orderNumber;
      account2.orderNumber = tempOrderNumber;
      await isar.accounts.putAll([account1, account2]);
    });
  }

  Future<int> getAllAccountsCount() async => isar.accounts.count();

  Future<int> getAccountsCount() async =>
      await isar.accounts.filter().isDeletedEqualTo(false).count();
}

@riverpod
AccountRepository accountRepository(AccountRepositoryRef ref) {
  return AccountRepository(ref.watch(isarClientProvider));
}
