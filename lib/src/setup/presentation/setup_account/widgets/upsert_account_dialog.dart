import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../accounts/dto/account_dto.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../core/controllers/settings_controller.dart';
import 'account_name_icon_selection.dart';
import 'account_type_selection.dart';

class UpsertAccountDialog extends HookConsumerWidget {
  const UpsertAccountDialog({super.key, this.stepData});
  final AccountDto? stepData;
  @override
  Widget build(context, ref) {
    final defaultCurrency = ref.watch(defaultCurrencyProvider)!;
    final account =
        useValueNotifier(stepData ?? AccountDto.empty(defaultCurrency));
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(onPressed: () => context.pop()),
        title: Text(stepData == null
            ? context.l10n.addAccount
            : context.l10n.editAccount),
      ),
      body: ListView(
        children: [
          HookBuilder(builder: (context) {
            final iconValue =
                useListenableSelector(account, () => account.value.iconValue);
            final accountName =
                useListenableSelector(account, () => account.value.name);
            final primaryColor = useListenableSelector(
                account, () => account.value.primaryColor);
            final secondaryColor = useListenableSelector(
                account, () => account.value.secondaryColor);
            return AccountNameIconSelection(
              icon: iconValue,
              name: accountName,
              primaryColor: primaryColor,
              secondaryColor: secondaryColor,
              onIconChanged: (value) => account.value =
                  account.value.copyWith(icon: value.codePoint),
              onNameChanged: (value) =>
                  account.value = account.value.copyWith(name: value),
            );
          }),
          HookBuilder(
            builder: (context) {
              final accountType = useListenableSelector(
                  account, () => account.value.accountType);
              return AccountTypeSelection(
                accountType: accountType,
                onChanged: (value) => account.value =
                    account.value.copyWith(accountType: value),
              );
            },
          ),
        ],
      ),
    );
  }
}
