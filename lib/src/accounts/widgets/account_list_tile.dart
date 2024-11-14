import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../../common/widgets/xp_list_tile.dart';
import '../domain/account.dart';
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
  final Account account;
  final VoidCallback? onTap;
  final Account? previousAccount;
  final Account? nextAccount;
  final bool isReadOnly;

  @override
  Widget build(context, ref) {
    return XpListTile(
      swapKey: account.id,
      tileColor: account.primaryColor,
      hideIconOnNull: false,
      isReadOnly: isReadOnly,
      leading: CircleAvatar(
        backgroundColor: account.secondaryColor,
        child: Icon(account.iconValue, size: 24, color: account.primaryColor),
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
        style: TextStyle(fontSize: 24, color: account.secondaryColor),
      ),
      onTap: AppUtils.returnIf(!isReadOnly, onTap),
      onNext: AppUtils.returnIf(
        nextAccount?.id != null,
        () => ref.read(accountServiceProvider).swapAccountsOrder(
              account.id,
              nextAccount!.id,
            ),
      ),
      onPrev: AppUtils.returnIf(
        previousAccount?.id != null,
        () => ref.read(accountServiceProvider).swapAccountsOrder(
              previousAccount!.id,
              account.id,
            ),
      ),
      onDelete: AppUtils.returnIf(
        !isReadOnly,
        () async {
          final shouldRevoke = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              titlePadding: const EdgeInsets.symmetric(horizontal: 8) +
                  const EdgeInsets.only(top: 8),
              actionsPadding: const EdgeInsets.symmetric(horizontal: 12) +
                  const EdgeInsets.only(bottom: 12),
              title: AccountListTile(account: account, isReadOnly: true),
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
            await ref.read(accountServiceProvider).deleteAccount(account.id);
          }
        },
      ),
    );
  }
}
