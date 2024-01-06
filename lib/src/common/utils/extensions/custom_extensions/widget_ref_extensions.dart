part of '../custom_extensions.dart';

extension WidgetRefExtensions on WidgetRef {
  VoidCallback? microInvalidate(ProviderOrFamily provider) {
    Future.microtask(() => invalidate(provider));
    return null;
  }
}
