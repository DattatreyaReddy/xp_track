import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/account_dto.dart';
import '../repository/account_repository.dart';

part 'account_service.g.dart';

class AccountService {
  final AccountRepository _accountRepository;

  AccountService(this._accountRepository);

  Future<void> swapAccountsOrder(int accountId1, int accountId2) async =>
      await _accountRepository.swapAccountsOrder(accountId1, accountId2);

  Future<AccountDto> saveAccount(AccountDto account) async {
    final accountDomain = account.toDomain;
    if (accountDomain.id == Isar.autoIncrement) {
      accountDomain.orderNumber =
          await _accountRepository.getAllAccountsCount();
    }

    final savedAccount = await _accountRepository.save(accountDomain);
    return AccountDto.fromDomain(savedAccount);
  }

  Future<bool> deleteAccount(int? accountId) async =>
      await _accountRepository.deleteById(accountId);

  Stream<List<AccountDto>> getAccountsStream() => _accountRepository
      .getAllOrderByOrderNumber()
      .map((event) => event.map((e) => AccountDto.fromDomain(e)).toList());
}

@riverpod
AccountService accountService(AccountServiceRef ref) {
  return AccountService(ref.watch(accountRepositoryProvider));
}
