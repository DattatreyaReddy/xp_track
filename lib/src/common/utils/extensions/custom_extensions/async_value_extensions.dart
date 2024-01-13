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

  Widget showUiWhenData(
    BuildContext context,
    Widget Function(T data) data, {
    VoidCallback? refresh,
    Widget Function(Widget)? wrapper,
    bool showGenericError = false,
    String scaffoldTitle = "",
    Widget? progressIndicator,
    bool isDebugMode = false,
  }) {
    progressIndicator =
        progressIndicator ?? const CenterCircularProgressIndicator();
    return when(
      data: data,
      error: (error, trace) => AppUtils.wrapWidgetIf(
        condition: wrapper == null,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.error, size: 48),
              const Gap(32),
              if (isDebugMode)
                Text(
                  context.l10n.somethingWentWrong,
                  textAlign: TextAlign.center,
                )
              else
                ErrorDisplayCopy(error: error),
              if (refresh != null)
                TextButton(
                  onPressed: refresh,
                  child: Text(
                    context.l10n.refresh,
                  ),
                )
            ],
          ),
        ),
      ),
      loading: () =>
          wrapper == null ? progressIndicator! : wrapper(progressIndicator!),
    );
  }

  // T? valueOrToast(Toast toast, {bool withMicroTask = false}) =>
  //     (this..showToastOnResponse(toast, withMicroTask: withMicroTask))
  //         .valueOrNull;

  AsyncValue<U> copyWithData<U>(U Function(T) data) => when(
        data: (prev) => AsyncData(data(prev)),
        error: (error, stackTrace) => AsyncError<U>(error, stackTrace),
        loading: () => AsyncLoading<U>(),
      );
}
