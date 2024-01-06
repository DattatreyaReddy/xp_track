part of '../custom_extensions.dart';

extension PagingControllerExtensions<ItemType>
    on PagingController<int, ItemType> {
  // void addPage(AsyncValue<ApiResponse<PaginationPage<ItemType>?>?> valuePage,
  //     int pageKey,
  //     [ValueChanged<int?>? updateCount]) {
  //   valuePage.whenOrNull(
  //     data: (response) {
  //       final page = response?.data;
  //       if (page == null) return;
  //       try {
  //         if (updateCount != null) {
  //           updateCount(page.totalElements);
  //         }
  //         if (page.last.ifNull()) {
  //           appendLastPage([...?page.content]);
  //         } else {
  //           appendPage([...?page.content], pageKey + 1);
  //         }
  //       } catch (e) {
  //         //
  //       }
  //     },
  //     error: (error, stackTrace) => this.error = error,
  //   );
  // }
}
