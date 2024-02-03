import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants/app_constants.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../dto/account_dto.dart';
import '../service/account_service.dart';

class AccountListTile extends ConsumerWidget {
  const AccountListTile({
    super.key,
    required this.account,
    this.onTap,
    this.previousAccount,
    this.nextAccount,
    this.isReadOnly = false,
  });
  final AccountDto account;
  final VoidCallback? onTap;
  final AccountDto? previousAccount;
  final AccountDto? nextAccount;
  final bool isReadOnly;

  @override
  Widget build(context, ref) {
    return Card(
      shape: AppDimensions.rb16,
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
            child: Material(
              key: ValueKey(account.accountId),
              elevation: 2,
              shape: AppDimensions.rb16,
              child: ListTile(
                onTap: AppUtils.returnIf(!isReadOnly, onTap),
                visualDensity: VisualDensity.comfortable,
                shape: AppDimensions.rb16,
                tileColor: account.primaryColor,
                leading: CircleAvatar(
                  backgroundColor: account.secondaryColor,
                  child: Icon(
                    account.iconValue,
                    size: 24,
                    color: account.primaryColor,
                  ),
                ),
                title: Text(
                  account.name,
                  style: TextStyle(color: account.onPrimaryColor),
                ),
                subtitle: Text(
                  account.accountType.toLocale(context),
                  style: TextStyle(color: account.secondaryColor),
                ),
                trailing: Text(
                  account.currencyInfo.symbol,
                  style: TextStyle(
                    fontSize: 24,
                    color: account.secondaryColor,
                  ),
                ),
              ),
            ),
          ),
          if (!isReadOnly)
            Row(
              children: [
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: AppUtils.returnIf(
                    previousAccount?.accountId != null &&
                        account.accountId != null,
                    () async {
                      await ref.read(accountServiceProvider).swapAccountsOrder(
                            previousAccount!.accountId!,
                            account.accountId!,
                          );
                    },
                  ),
                  icon: const Icon(Icons.arrow_drop_up_rounded),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: AppUtils.returnIf(
                    nextAccount?.accountId != null && account.accountId != null,
                    () async {
                      await ref.read(accountServiceProvider).swapAccountsOrder(
                            account.accountId!,
                            nextAccount!.accountId!,
                          );
                    },
                  ),
                  icon: const Icon(Icons.arrow_drop_down_rounded),
                ),
                const Spacer(),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () async {
                    final shouldRevoke = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title:
                            AccountListTile(account: account, isReadOnly: true),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.confirmation,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const Gap(8),
                            Text("- ${context.l10n.deleteAccountInfo}"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(context.l10n.cancel),
                          ),
                          FilledButton.tonal(
                            onPressed: () => Navigator.pop(context, true),
                            child: Text(context.l10n.delete),
                          ),
                        ],
                      ),
                    );
                    if (shouldRevoke.ifNull()) {
                      await ref
                          .read(accountServiceProvider)
                          .deleteAccount(account.accountId);
                    }
                  },
                  icon: const Icon(Icons.delete_rounded, size: 18),
                ),
                const Gap(8),
              ],
            ),
        ],
      ),
    );
  }
}
