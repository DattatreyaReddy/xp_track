import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../accounts/dto/account_dto.dart';
import '../../accounts/repository/account_repository.dart';

part 'setup_controllers.g.dart';

@riverpod
FutureOr<List<AccountDto>> accounts(AccountsRef ref) async {
  final accounts = await ref.watch(accountRepositoryProvider).getAll();
  return accounts.map(AccountDto.fromDomain).toList();
}
