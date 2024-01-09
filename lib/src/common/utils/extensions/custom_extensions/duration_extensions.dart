part of '../custom_extensions.dart';

extension DurationExt on Duration {
  String get toMinAndSec {
    var microseconds = inMicroseconds;
    var sign = "";
    var negative = microseconds < 0;

    var hours = microseconds ~/ Duration.microsecondsPerHour;
    microseconds = microseconds.remainder(Duration.microsecondsPerHour);

    // Correcting for being negative after first division, instead of before,
    // to avoid negating min-int, -(2^31-1), of a native int64.
    if (negative) {
      hours = 0 - hours; // Not using `-hours` to avoid creating -0.0 on web.
      microseconds = 0 - microseconds;
      sign = "-";
    }

    var minutes = microseconds ~/ Duration.microsecondsPerMinute;
    microseconds = microseconds.remainder(Duration.microsecondsPerMinute);

    var seconds = microseconds ~/ Duration.microsecondsPerSecond;

    var result = sign;

    if (hours > 0) {
      result += "$hours:";
    }
    result += "${minutes.padLeft(padOnZero: true)}:"
        "${seconds.padLeft(padOnZero: true)}";

    return result;
  }

  String toDaysAndHoursAndMins(BuildContext context, {bool showSecs = false}) {
    var microseconds = inMicroseconds;
    var negative = microseconds < 0;

    var days = microseconds ~/ Duration.microsecondsPerDay;
    microseconds = microseconds.remainder(Duration.microsecondsPerDay);

    // Correcting for being negative after first division, instead of before,
    // to avoid negating min-int, -(2^31-1), of a native int64.
    if (negative) {
      days = 0 - days; // Not using `-days` to avoid creating -0.0 on web.
      microseconds = 0 - microseconds;
    }

    var hours = microseconds ~/ Duration.microsecondsPerHour;
    microseconds = microseconds.remainder(Duration.microsecondsPerHour);

    var minutes = microseconds ~/ Duration.microsecondsPerMinute;
    microseconds = microseconds.remainder(Duration.microsecondsPerMinute);

    var seconds = microseconds ~/ Duration.microsecondsPerSecond;

    if (days == 0 && hours == 0 && minutes == 0) {
      if (showSecs && seconds > 0) {
        return context.l10n.nSeconds(seconds);
      }
      return context.l10n.justNow;
    }

    var result = negative ? "- " : "";
    if (days > 0) {
      result += "${context.l10n.nDays(days)} ";
    }
    if (hours > 0) {
      result += "${context.l10n.nHours(hours)} ";
    }
    if (days > 0) {
      return result;
    }

    return "$result${context.l10n.nMinutes(minutes)}";
  }
}
