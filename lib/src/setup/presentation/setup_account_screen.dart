import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../accounts/controllers/account_controllers.dart';
import '../../accounts/dto/account_dto.dart';
import '../../accounts/widgets/account_list_tile.dart';
import '../../accounts/widgets/upsert_account/upsert_account_widget.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/widgets/label_text.dart';
import '../routes/routes.dart';
import '../widgets/intro_nav_buttons.dart';
import '../widgets/responsive_intro_widget.dart';

class SetupAccountScreen extends HookConsumerWidget {
  const SetupAccountScreen({super.key});

  void showUpsertAccountDialog(BuildContext context, [AccountDto? account]) {
    if (context.isSmallTablet) {
      Scaffold.of(context).openEndDrawer();
    } else {
      showDialog(
        context: context,
        builder: (context) => Dialog.fullscreen(
          child: UpsertAccountWidget(stepData: account),
        ),
      );
    }
  }

  @override
  Widget build(context, ref) {
    final asyncAccountList = ref.watch(accountsProvider);
    // using the value notifier to pass the account to the drawer
    // when the user taps on an account to edit it
    // A workaround to pass the selected account to the drawer
    final editAccount = useValueNotifier<AccountDto?>(null);

    return ResponsiveIntroWidget(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: HookBuilder(
          builder: (context) => UpsertAccountWidget(
            stepData: useListenable(editAccount).value,
          ),
        ),
      ),
      showMiniLogoForMobile: true,
      isMobileScrollable: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(label: context.l10n.accounts),
          const Gap(16),
          Expanded(
            child: Material(
              child: asyncAccountList.showUiWhenData(
                context,
                (data) => ListView.separated(
                  separatorBuilder: (context, index) => const Gap(4),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final account = data[index];
                    return AccountListTile(
                      previousAccount: data.getPrev(index),
                      nextAccount: data.getNext(index),
                      onTap: () {
                        editAccount.value = account;
                        showUpsertAccountDialog(context, account);
                      },
                      account: account,
                    );
                  },
                ),
              ),
            ),
          ),
          Builder(
            builder: (context) => IntroNavButtons(
              onPressedPrevious: () => context.pop(),
              onPressedAdd: () => showUpsertAccountDialog(context),
              onPressedNext: () {
                const SetupCategoryRoute().push(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
