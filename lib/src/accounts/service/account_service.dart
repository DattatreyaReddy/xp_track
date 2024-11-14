import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/account_dto.dart';
import '../repository/account_repository.dart';

part 'account_service.g.dart';

class AccountService {
  final AccountRepository _repository;

  AccountService(this._repository);

  Future<void> swapAccountsOrder(int accountId1, int accountId2) async =>
      await _repository.swapAccountsOrder(accountId1, accountId2);

  Future<AccountDto> saveAccount(AccountDto account) async {
    final accountDomain = account.toDomain;
    if (accountDomain.id == Isar.autoIncrement) {
      accountDomain.orderNumber =
          await _repository.getCount(includeDeleted: true);
    }

    final savedAccount = await _repository.save(accountDomain);
    return AccountDto.fromDomain(savedAccount);
  }

  Future<bool> deleteAccount(int? accountId) async =>
      await _repository.deleteById(accountId);

  Stream<List<AccountDto>> getAccountsStream() => _repository
      .getAllOrderByOrderNumber()
      .map((event) => event.map((e) => AccountDto.fromDomain(e)).toList());
}

@riverpod
AccountService accountService(AccountServiceRef ref) =>
    AccountService(ref.watch(accountRepositoryProvider));
