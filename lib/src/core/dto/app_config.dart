import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

@freezed
sealed class AppConfig with _$AppConfig {
  factory AppConfig.splash() = SplashState;
  factory AppConfig.setup() = SetupState;
  factory AppConfig.home() = HomeState;
}
