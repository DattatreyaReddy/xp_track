import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils/extensions/custom_extensions.dart';
import '../../../common/utils/misc/toast.dart';
import '../../domain/category.dart';
import '../../service/category_service.dart';
import '../color_selection.dart';
import '../icon_and_name_selection.dart';

class UpsertCategoryWidget extends HookConsumerWidget {
  const UpsertCategoryWidget({super.key, this.stepData});
  final Category? stepData;
  @override
  Widget build(context, ref) {
    final category = useValueNotifier(stepData ?? Category.empty());
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(onPressed: () => context.pop()),
        title: Text(stepData == null
            ? context.l10n.addCategory
            : context.l10n.editCategory),
      ),
      persistentFooterButtons: [
        FilledButton.tonal(
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
          onPressed: () async {
            if (category.value.name.isBlank) {
              ref.watch(toastProvider(context)).showError(
                    context.l10n.nIsRequired(context.l10n.categoryName),
                  );
              return;
            }
            await ref
                .read(categoryServiceProvider)
                .saveCategory(category.value);
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
              final iconValue = useListenableSelector(
                  category, () => category.value.iconValue);
              final categoryName =
                  useListenableSelector(category, () => category.value.name);
              final primaryColor = useListenableSelector(
                  category, () => category.value.primaryColor);
              final secondaryColor = useListenableSelector(
                  category, () => category.value.secondaryColor);
              return IconAndNameSelection(
                labelText: context.l10n.categoryName,
                icon: iconValue,
                name: categoryName,
                primaryColor: primaryColor,
                secondaryColor: secondaryColor,
                onIconChanged: (value) => category.value =
                    category.value.copyWith(icon: value.codePoint),
                onNameChanged: (value) =>
                    category.value = category.value.copyWith(name: value),
              );
            }),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HookBuilder(
              builder: (context) {
                final primarySelectedColor =
                    useListenableSelector(category, () => category.value.color);
                return ColorSelection(
                  selectedColor: primarySelectedColor,
                  onChanged: (value) =>
                      category.value = category.value.copyWith(color: value),
                );
              },
            ),
          ),
          HookBuilder(
            builder: (context) {
              final includeInBalance = useListenableSelector(
                  category, () => category.value.includeInBalance);
              return CheckboxListTile(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                checkboxShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text(context.l10n.includeInBalance),
                value: includeInBalance,
                onChanged: (value) => category.value =
                    category.value.copyWith(includeInBalance: value.ifNull()),
              );
            },
          ),
        ],
      ),
    );
  }
}
