import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../accounts/dto/account_dto.dart';
import '../../../../accounts/dto/credit_details_dto.dart';
import '../../../../accounts/dto/split_details_dto.dart';
import '../../../../accounts/enums/account_type.dart';
import '../../../../accounts/service/account_service.dart';
import '../../../../common/utils/extensions/custom_extensions.dart';
import '../../../../common/utils/misc/toast.dart';
import '../../../../core/controllers/settings_controller.dart';
import 'account_color_selection.dart';
import 'account_name_icon_selection.dart';
import 'account_type_selection.dart';
import 'upsert_credit_details.dart';
import 'upsert_split_details.dart';

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
      persistentFooterButtons: [
        FilledButton.tonal(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
          onPressed: () async {
            if (account.value.name.isBlank) {
              ref.watch(toastProvider(context)).showError(
                    context.l10n.nIsRequired(context.l10n.accountName),
                  );
              return;
            }
            await ref.read(accountServiceProvider).saveAccount(account.value);
            if (context.mounted) {
              context.pop();
            }
          },
          child: Text(context.l10n.save),
        )
      ],
      body: ListView(
        children: [
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(builder: (context) {
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
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(
              builder: (context) {
                final primarySelectedColor =
                    useListenableSelector(account, () => account.value.color);
                return AccountColorSelection(
                  selectedColor: primarySelectedColor,
                  onChanged: (value) =>
                      account.value = account.value.copyWith(color: value),
                );
              },
            ),
          ),
          HookBuilder(
            builder: (context) {
              final includeInBalance = useListenableSelector(
                  account, () => account.value.includeInBalance);
              return CheckboxListTile(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text(context.l10n.includeInBalance),
                value: includeInBalance,
                onChanged: (value) => account.value =
                    account.value.copyWith(includeInBalance: value.ifNull()),
              );
            },
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(
              builder: (context) {
                final accountType = useListenableSelector(
                    account, () => account.value.accountType);
                return AccountTypeSelection(
                  accountType: accountType,
                  onChanged: (value) {
                    account.value = account.value.copyWith(
                      accountType: value,
                      creditDetails: null,
                      splitDetails: null,
                    );
                  },
                );
              },
            ),
          ),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(builder: (context) {
              final accountType = useListenableSelector(
                  account, () => account.value.accountType);
              useListenableSelector(account, () => account.value.splitDetails);
              useListenableSelector(account, () => account.value.creditDetails);
              return switch (accountType) {
                AccountType.debit => const SizedBox.shrink(),
                AccountType.credit => UpsertCreditDetails(
                    creditDetailsDto:
                        account.value.creditDetails ?? CreditDetailsDto.empty(),
                    onChanged: (value) => account.value =
                        account.value.copyWith(creditDetails: value),
                  ),
                AccountType.split => UpsertSplitDetails(
                    splitDetailsDto:
                        account.value.splitDetails ?? SplitDetailsDto.empty(),
                    onChanged: (value) => account.value =
                        account.value.copyWith(splitDetails: value),
                  ),
              };
            }),
          ),
        ],
      ),
    );
  }
}
