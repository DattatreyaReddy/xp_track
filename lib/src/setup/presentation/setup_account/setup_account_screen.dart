import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../accounts/dto/account_dto.dart';
import '../../../common/constants/app_constants.dart';
import '../../../common/utils/extensions/custom_extensions.dart';
import '../../controller/setup_controllers.dart';
import '../../routes/routes.dart';
import '../../widgets/intro_nav_buttons.dart';
import '../../widgets/label_text.dart';
import '../../widgets/responsive_intro_widget.dart';
import 'widgets/upsert_account_dialog.dart';

class SetupAccountScreen extends HookConsumerWidget {
  const SetupAccountScreen({super.key});

  void showUpsertAccountDialog(BuildContext context, [AccountDto? account]) {
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: UpsertAccountDialog(stepData: account),
      ),
    );
  }

  @override
  Widget build(context, ref) {
    final asyncAccountList = ref.watch(accountsProvider);
    final accountList = useState<List<AccountDto>>([]);
    useEffect(() {
      asyncAccountList.whenData((accounts) {
        accountList.value = accounts;
      });
      return;
    }, [asyncAccountList]);

    return ResponsiveIntroWidget(
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
                (data) => ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final account = data[index];
                    Colors.accents;
                    return ListTile(
                      onTap: () => showUpsertAccountDialog(context, account),
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
                    );
                  },
                ),
              ),
            ),
          ),
          IntroNavButtons(
            onPressedPrevious: () => context.pop(),
            onPressedAdd: () {
              showUpsertAccountDialog(context);
            },
            onPressedNext: () {
              const SetupCategoryRoute().push(context);
            },
          ),
        ],
      ),
    );
  }
}
