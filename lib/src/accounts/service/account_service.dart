import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/account.dart';
import '../repository/account_repository.dart';

part 'account_service.g.dart';

class AccountService {
  final AccountRepository _repository;

  AccountService(this._repository);

  Future<void> swapAccountsOrder(String accountId1, String accountId2) async =>
      await _repository.swapAccountsOrder(accountId1, accountId2);

  Future<void> saveAccount(Account account) async =>
      await _repository.save(account);

  Future<bool> deleteAccount(String accountId) async =>
      await _repository.deleteById(accountId);

  Stream<List<Account>> getAccountsStream() =>
      _repository.getAllOrderByOrderNumber();
}

@riverpod
AccountService accountService(Ref ref) =>
    AccountService(ref.watch(accountRepositoryProvider));
