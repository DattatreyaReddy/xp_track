import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../accounts/controllers/account_controllers.dart';
import '../../accounts/domain/category.dart';
import '../../accounts/widgets/category_list_tile.dart';
import '../../accounts/widgets/upsert_category/upsert_category_widget.dart';
import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/widgets/label_text.dart';
import '../controller/setup_controller.dart';
import '../widgets/intro_nav_buttons.dart';
import '../widgets/responsive_intro_widget.dart';

class SetupCategoryScreen extends HookConsumerWidget {
  const SetupCategoryScreen({super.key});

  void showUpsertCategoryDialog(BuildContext context, [Category? category]) {
    if (context.isSmallTablet) {
      Scaffold.of(context).openEndDrawer();
    } else {
      showDialog(
        context: context,
        builder: (context) => Dialog.fullscreen(
          child: UpsertCategoryWidget(stepData: category),
        ),
      );
    }
  }

  @override
  Widget build(context, ref) {
    final asyncCategoryList = ref.watch(categoriesProvider);
    // using the value notifier to pass the category to the drawer
    // when the user taps on an category to edit it
    // A workaround to pass the selected category to the drawer
    final editCategory = useValueNotifier<Category?>(null);
    return ResponsiveIntroWidget(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: HookBuilder(
          builder: (context) => UpsertCategoryWidget(
            stepData: useListenable(editCategory).value,
          ),
        ),
      ),
      showMiniLogoForMobile: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(label: context.l10n.category),
          const Gap(16),
          Expanded(
            child: Material(
              child: asyncCategoryList.showUiWhenData(
                context,
                (data) => ListView.separated(
                  separatorBuilder: (context, index) => const Gap(4),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final category = data[index];
                    return CategoryListTile(
                      onTap: () {
                        editCategory.value = category;
                        showUpsertCategoryDialog(context, category);
                      },
                      category: category,
                    );
                  },
                ),
              ),
            ),
          ),
          Builder(
            builder: (context) => IntroNavButtons(
              onPressedPrevious: () => context.pop(),
              onPressedAdd: () => showUpsertCategoryDialog(context),
              onPressedNext: () =>
                  ref.read(hasSetupCompletedProvider.notifier).update(true),
            ),
          ),
        ],
      ),
    );
  }
}
