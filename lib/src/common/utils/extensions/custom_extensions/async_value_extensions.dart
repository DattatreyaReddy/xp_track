part of '../custom_extensions.dart';

extension AsyncValueExtensions<T> on AsyncValue<T> {
  // void _showToastOnResponse(
  //   Toast toast, {
  //   bool showSuccess = false,
  //   String? successMessage,
  // }) {
  //   if (!isRefreshing) {
  //     whenOrNull(
  //       data: (data) {
  //         if (showSuccess) {
  //           String altText;
  //           if (data is ApiResponse<String>) {
  //             altText = data.data ?? "";
  //           } else if (data is String) {
  //             altText = data;
  //           } else {
  //             altText = "Success";
  //           }
  //           toast.instantShow(successMessage ?? altText);
  //         }
  //       },
  //       error: (error, stackTrace) {
  //         toast.close();
  //         toast.showError(
  //           error is DioException
  //               ? DioErrorUtil.handleError(error)
  //               : error.toString(),
  //         );
  //       },
  //     );
  //   }
  // }

  // void showToastOnResponse(
  //   Toast toast, {
  //   bool withMicroTask = false,
  //   bool showSuccess = false,
  //   String? successMessage,
  // }) {
  //   if (withMicroTask) {
  //     Future.microtask(() => (_showToastOnResponse(
  //           toast,
  //           showSuccess: showSuccess,
  //           successMessage: successMessage,
  //         )));
  //   } else {
  //     _showToastOnResponse(
  //       toast,
  //       showSuccess: showSuccess,
  //       successMessage: successMessage,
  //     );
  //   }
  // }

  // Widget showUiWhenData(
  //   BuildContext context,
  //   Widget Function(T data) data, {
  //   VoidCallback? refresh,
  //   Widget Function(Widget)? wrapper,
  //   bool showGenericError = false,
  //   bool addScaffoldWrapper = false,
  //   String scaffoldTitle = "",
  //   Widget? progressIndicator,
  // }) {
  //   if (addScaffoldWrapper) {
  //     wrapper = (body) => Scaffold(
  //           appBar: LogoAppBar(title: Text(scaffoldTitle)),
  //           body: body,
  //         );
  //   }
  //   progressIndicator =
  //       progressIndicator ?? const CenterCircularProgressIndicator();
  //   return when(
  //     data: data,
  //     error: (error, trace) => wrapper == null
  //         ? Card(
  //             child: Padding(
  //               padding: KEdgeInsets.a16.size,
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 crossAxisAlignment: CrossAxisAlignment.stretch,
  //                 children: [
  //                   Assets.images.baseTruck.image(height: 128),
  //                   const Gap(32),
  //                   Text(
  //                     error is DioException && error.response != null
  //                         ? DioErrorUtil.handleError(error)
  //                         : kDebugMode
  //                             ? error.toString()
  //                             : context.l10n!.somethingWentWrong,
  //                     textAlign: TextAlign.center,
  //                   ),
  //                   if (refresh != null)
  //                     TextButton(
  //                       onPressed: refresh,
  //                       child: Text(
  //                         context.l10n!.refresh,
  //                       ),
  //                     )
  //                 ],
  //               ),
  //             ),
  //           )
  //         : wrapper(
  //             Center(
  //               child: Padding(
  //                 padding: KEdgeInsets.a16.size,
  //                 child: Column(
  //                   mainAxisSize: MainAxisSize.min,
  //                   crossAxisAlignment: CrossAxisAlignment.stretch,
  //                   children: [
  //                     Assets.images.baseTruck.image(height: 128),
  //                     const Gap(32),
  //                     Text(
  //                       error is DioException && error.response != null
  //                           ? DioErrorUtil.handleError(error)
  //                           : kDebugMode
  //                               ? error.toString()
  //                               : context.l10n!.somethingWentWrong,
  //                       textAlign: TextAlign.center,
  //                     ),
  //                     if (refresh != null)
  //                       TextButton(
  //                         onPressed: refresh,
  //                         child: Text(
  //                           context.l10n!.refresh,
  //                         ),
  //                       )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //     loading: () =>
  //         wrapper == null ? progressIndicator! : wrapper(progressIndicator!),
  //   );
  // }

  // T? valueOrToast(Toast toast, {bool withMicroTask = false}) =>
  //     (this..showToastOnResponse(toast, withMicroTask: withMicroTask))
  //         .valueOrNull;

  AsyncValue<U> copyWithData<U>(U Function(T) data) => when(
        data: (prev) => AsyncData(data(prev)),
        error: (error, stackTrace) => AsyncError<U>(error, stackTrace),
        loading: () => AsyncLoading<U>(),
      );
}
