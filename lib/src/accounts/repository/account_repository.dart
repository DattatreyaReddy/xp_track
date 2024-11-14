import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tekartik_app_flutter_sembast/setup/sembast_flutter.dart';

import '../../common/controllers/common_controllers.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../../core/storage/isar/repository/generic_repository.dart';
import '../domain/account.dart';

part 'account_repository.g.dart';

class AccountRepository extends GenericRepository<Account> {
  AccountRepository(Database db) : super(db, "Account", Account.fromJson);

  @override
  Future<void> save(Account entity, [DatabaseClient? dbClient]) async {
    return wrap(dbClient, (txn) async {
      if (entity.id.isDbKeyHolder) {
        final orderNumber = DateTime.now().millisecondsSinceEpoch;
        entity = entity.copyWith(orderNumber: orderNumber);
      }
      await super.save(entity, txn);
    });
  }

  Stream<List<Account>> getAllOrderByOrderNumber() => store
      .query(
        finder: Finder(sortOrders: [SortOrder(AccountField.orderNumber.name)]),
      )
      .onSnapshots(database)
      .map(AppUtils.convertSnaps(fromJson));

  Future<void> swapAccountsOrder(String accountId1, String accountId2) async {
    await database.transaction((txn) async {
      final account1 = await getById(accountId1, txn);
      final account2 = await getById(accountId2, txn);
      if (account1 == null || account2 == null) {
        return;
      }
      // Swap order numbers of the accounts
      saveAll([
        account1.copyWith(orderNumber: account2.orderNumber),
        account2.copyWith(orderNumber: account1.orderNumber),
      ], txn);
    });
  }
}

@riverpod
AccountRepository accountRepository(Ref ref) =>
    AccountRepository(ref.watch(dbProvider));
