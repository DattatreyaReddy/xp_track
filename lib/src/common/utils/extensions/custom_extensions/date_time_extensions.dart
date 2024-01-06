part of '../custom_extensions.dart';

extension DateTimeExtensions on DateTime {
  String get toDateString => DateFormat('E, dd MMM yyyy,', 'en')
      .add_jm()
      .format(this); //Fri, 18 Nov 2022, 12:30 PM

  String get toShortDateString => DateFormat('dd MMM yy,', 'en')
      .add_jm()
      .format(this); //18 Nov 2022, 12:30 PM
  String get toMonthYearString => DateFormat.yMMM().format(this);
  String get toDayMonthString => DateFormat.MMMd().format(this);
  String get toDayString => DateFormat.E().format(this);
  String get toMonthString => DateFormat.MMM().format(this);
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
        microsecond ?? this.microsecond,
      );

// /////////////////////////////////////////////////////////////////////////////

  DateTime get startOfDay => DateTime(year, month, day);

  DateTime get endOfDay => copyWith(
        hour: 23,
        minute: 59,
        second: 59,
        millisecond: 999,
      );

  DateTimeRange get sameDayRange => DateTimeRange(
        start: startOfDay,
        end: endOfDay,
      );

  bool isSameDay(DateTime date) =>
      day == date.day && month == date.month && year == date.year;

// /////////////////////////////////////////////////////////////////////////////

  DateTime get firstDayOfWeek => subtract(
        Duration(days: (weekday - 1)),
      ).startOfDay;

  DateTime get lastDayOfWeek => add(
        Duration(days: 7 - weekday),
      ).endOfDay;

  DateTimeRange get sameWeekRange => DateTimeRange(
        start: firstDayOfWeek,
        end: lastDayOfWeek,
      );

// /////////////////////////////////////////////////////////////////////////////

  DateTime get firstDayOfMonth => DateTime(year, month);

  DateTime get lastDayOfMonth => DateTime(year, month + 1, 0).endOfDay;

  DateTimeRange get sameMonthRange => DateTimeRange(
        start: firstDayOfMonth,
        end: lastDayOfMonth,
      );

// /////////////////////////////////////////////////////////////////////////////

  DateTime get firstDayOfFinYear => DateTime(
        month >= 4 ? year : year - 1,
        4,
      );

  DateTime get lastDayOfFinYear => DateTime(
        month >= 4 ? year + 1 : year,
        3,
        31,
      ).endOfDay;

  DateTimeRange get sameFinYearRange => DateTimeRange(
        start: firstDayOfFinYear,
        end: lastDayOfFinYear,
      );

// /////////////////////////////////////////////////////////////////////////////

  static DateTime max(DateTime a, DateTime b) => a.compareTo(b) > 0 ? a : b;

  String get convertToDaysAgo {
    Duration diff = DateTime.now().difference(this);
    if (diff.inDays < 1) {
      return "Today";
    } else if (diff.inDays < 2) {
      return 'Yesterday';
    } else if (diff.inDays < 10) {
      return '${diff.inDays} days ago';
    } else {
      return DateFormat.yMMMd().format(this);
    }
  }
}

extension NullableDateTimeExtensions on DateTime? {
  String getDifferenceInString(
    BuildContext context, [
    DateTime? other,
    bool showSecs = false,
  ]) {
    DateTime newThis = this ?? DateTime.now();
    DateTime newOther = other ?? DateTime.now();

    Duration diff = newThis.difference(newOther);
    return diff.toDaysAndHoursAndMins(context, showSecs: showSecs);
  }
}
