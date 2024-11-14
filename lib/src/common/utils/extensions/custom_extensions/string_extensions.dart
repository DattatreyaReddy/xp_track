part of '../custom_extensions.dart';

extension NullableStringExtensions on String? {
  bool get isNull => this == null;

  bool get isBlank => isNull || this!.isEmpty;

  bool get isDbKeyHolder => isBlank || this == kDbKeyHolder;

  String? get normalized => isBlank ? null : (this!.trim()).toUpperCase();

  bool get isNotBlank => !isBlank;

  bool get isNumber => (this != null && int.tryParse(this!) != null);

  bool isNumberWithLength(int len) => (isNumber && "$this".length == len);

  bool get isMobileNumber => isNumberWithLength(10);

  bool get isOtp => isNumberWithLength(6);

  String ifNull([String value = '']) => isNull ? value : this!;

  String ifBlank([String value = '']) => isBlank ? value : this!;

  String? wrap({String? prefix = " (", String? suffix = ")"}) {
    if (isBlank) return null;
    return "${prefix.ifNull()}$this${suffix.ifNull()}";
  }

  double? tryParse() => isNull ? null : double.tryParse(this!);
  bool hasMatch(String pattern) =>
      (isNull) ? false : RegExp(pattern).hasMatch(this!);

  String? get capitalize {
    if (isNull) return null;
    if (this!.isEmpty) return this;
    return this!.split(' ').map((e) => e.capitalizeFirst).join(' ');
  }

  String? get capitalizeFirst {
    if (isNull) return null;
    if (this!.isEmpty) return this;
    return this![0].toUpperCase() + this!.substring(1).toLowerCase();
  }

  /// Converts "hello hi" to "HH"
  String? nameToLetters({int maxLength = 2}) {
    if (isNull) return null;
    return this!
        .split(" ")
        .take(maxLength)
        .map((e) => e.isEmpty ? "" : e[0].toUpperCase())
        .join();
  }

  String get incrementZeroPaddedInt {
    if (isNull) return "1";
    final valLen = this!.length;
    final newVal = (int.tryParse(this!).ifNull()) + 1;
    final noOfZeros = max(valLen - (newVal.toString()).length, 0);
    return newVal.padLeft(width: noOfZeros, padding: "0")!;
  }

  /// Checks if this is phone number.
  bool get isPhoneNumber {
    if (isNull) return false;
    if (this!.length != 10) return false;
    return hasMatch(r'^[0-9]{10}$');
  }

  /// Checks if this is email.
  bool get isEmail {
    if (isNull) return false;
    return this!.hasMatch(
        r'^(([^<>[\]\\.,;:\s@\"]+(\.[^<>[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  }

  bool query([String? query]) {
    if (isNull) return false;
    if (query.isBlank) return true;
    return this!.toLowerCase().contains(query!.toLowerCase());
  }

  String? get toCamelCase {
    if (isBlank) return null;
    List<String> separatedWords =
        this!.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    return separatedWords.fold<String>(
      "",
      (value, word) =>
          value + word[0].toUpperCase() + word.substring(1).toLowerCase(),
    );
  }

  String? get toDisplayName {
    if (isBlank) return null;
    final separatedWords =
        this!.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    separatedWords[0] = separatedWords[0].capitalizeFirst!;
    return separatedWords.reduce((value, e) => "$value $e");
  }

  String? get toStartCase {
    if (isBlank) return null;
    final separatedWords =
        this!.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    separatedWords[0] = separatedWords[0].capitalizeFirst!;
    return separatedWords.reduce((value, e) => "$value ${e.capitalizeFirst!}");
  }

  String? get last10Digits {
    if (isBlank) return null;
    return this!.length > 10 ? this!.substring(this!.length - 10) : this;
  }

  String? get toWebSocket {
    if (isBlank) return null;
    return this!.replaceFirst(RegExp('http', caseSensitive: false), 'ws');
  }

  String? get textBetweenCopyTag {
    if (isBlank) return null;
    final startIndex = this!.indexOf('<copy>') + 6;
    final endIndex = this!.indexOf('</copy>');
    if (startIndex == -1 || startIndex > this!.length || endIndex == -1) {
      return this!;
    }
    return this!.substring(startIndex, endIndex);
  }

  String? get getFileName {
    if (isBlank) return null;
    final startIndex = this!.lastIndexOf('/') + 1;
    final endIndex = this!.lastIndexOf('.');
    if (startIndex == -1 || startIndex > this!.length || endIndex == -1) {
      return this!;
    }
    return this!.substring(startIndex, endIndex);
  }

  String? get getFileNameWithExtension {
    if (isBlank) return null;
    final startIndex = this!.lastIndexOf('/') + 1;
    return this!.substring(startIndex);
  }

  String? get getExtension {
    if (isBlank) return null;
    final startIndex = this!.lastIndexOf('.') + 1;
    return this!.substring(startIndex);
  }

  String? ellipsis([int length = 20]) {
    if (isBlank) return null;
    if (this!.length <= length) return this;
    return "${this!.substring(0, length)}...";
  }

  String? get format {
    final whitespaceRE = RegExp(r"(?! )\s+| \s+");
    if (isBlank) return null;
    return this?.replaceAllMapped(whitespaceRE, (match) => " ");
  }

  Locale? get toLocale {
    if (isBlank) return null;
    final String separator;
    if (this!.contains('-')) {
      separator = '-';
    } else if (this!.contains('_')) {
      separator = '_';
    } else {
      return null;
    }
    final locale = this!.split(separator);
    if (locale.length == 1) {
      return Locale(locale[0]);
    } else if (locale.length == 2) {
      return Locale(locale[0], locale[1]);
    } else if (locale.length == 3) {
      return Locale.fromSubtags(
        languageCode: locale[0],
        scriptCode: locale[1],
        countryCode: locale[2],
      );
    }
    return null;
  }
}
