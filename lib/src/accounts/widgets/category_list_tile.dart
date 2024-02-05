import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/utils/extensions/custom_extensions.dart';
import '../../common/utils/misc/app_utils.dart';
import '../../common/widgets/xp_list_tile.dart';
import '../dto/category_dto.dart';
import '../service/category_service.dart';

class CategoryListTile extends ConsumerWidget {
  const CategoryListTile({
    super.key,
    required this.category,
    this.onTap,
    this.isReadOnly = false,
  });
  final CategoryDto category;
  final VoidCallback? onTap;
  final bool isReadOnly;

  @override
  Widget build(context, ref) {
    return XpListTile(
      swapKey: category.categoryId,
      tileColor: category.primaryColor,
      hideIconOnNull: true,
      isReadOnly: isReadOnly,
      leading: CircleAvatar(
        backgroundColor: category.secondaryColor,
        child: Icon(category.iconValue, size: 24, color: category.primaryColor),
      ),
      title: Text(
        category.name,
        style: TextStyle(color: category.onPrimaryColor),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete_rounded, size: 24),
        onPressed: AppUtils.returnIf(
          !isReadOnly,
          () async {
            final shouldRevoke = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                titlePadding: const EdgeInsets.symmetric(horizontal: 8) +
                    const EdgeInsets.only(top: 8),
                actionsPadding: const EdgeInsets.symmetric(horizontal: 12) +
                    const EdgeInsets.only(bottom: 12),
                title: CategoryListTile(category: category, isReadOnly: true),
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
                    Text("- ${context.l10n.deleteCategoryInfo}"),
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
                  .read(categoryServiceProvider)
                  .deleteCategory(category.categoryId);
            }
          },
        ),
      ),
      onTap: AppUtils.returnIf(!isReadOnly, onTap),
    );
  }
}
