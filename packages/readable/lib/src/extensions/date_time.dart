// TODO :: uncomment only tested ones
///
extension RDateTime on DateTime {
  /// * `true` if the date in the morning, `false` otherwise.
  bool get isAm => hour < 12;

  /// * `true` if the date in the evening, `false` otherwise.
  bool get isPm => hour >= 12;

  ///
  DateTime get nextDay => add(const Duration(days: 1));

  ///
  DateTime get sameDayNextWeek => add(const Duration(days: 7));

  /// DateTime get sameDayNextMonth => add(const Duration(days: 7));
  DateTime get previousDay => subtract(const Duration(days: 1));

  ///
  DateTime get sameDayPreviousWeek => subtract(const Duration(days: 7));
  // DateTime get sameDayPreviousMonth => subtract(const Duration(days: 7));

  /// * creates new instance of [DateTime] with the same date
  /// * but overrides the values of the given parameters
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) =>
      DateTime(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
      );

  /// * return [true] if the date is today, [false] otherwise.
  bool get isToday => isSameDay(DateTime.now());

  ///
  bool isSameDay(
    DateTime date,
  ) =>
      date.year == year && date.month == month && date.day == day;

  /// * return [true] if the date is tomorrow, [false] otherwise.
  bool get isTomorrow => isSameDay(DateTime.now().nextDay);

  /// * return [true] if the date is yesterday, [false] otherwise.
  bool get isYesterday => isSameDay(DateTime.now().previousDay);

  /// * return [true] if the date is In This Month, [false] otherwise.
  bool get isInThisMonth {
    final now = DateTime.now();
    return now.year == year && now.month == month;
  }

  /// * return [true] if the date is In This Year, [false] otherwise.
  bool get isInThisYear => year == DateTime.now().year;

  /// * return [true] if the date is In The Future, [false] otherwise.
  bool get isInTheFuture => isAfter(DateTime.now());

  /// * return [true] if the date is In The past, [false] otherwise.
  bool get isInThePast => isBefore(DateTime.now());

  /// * return [true] if the date is In January, [false] otherwise.
  bool get isInJanuary => month == 1;

  /// * return [true] if the date is In February, [false] otherwise.
  bool get isInFebruary => month == 2;

  /// * return [true] if the date is In March, [false] otherwise.
  bool get isInMarch => month == 3;

  /// * return [true] if the date is In April, [false] otherwise.
  bool get isInApril => month == 4;

  /// * return [true] if the date is In May, [false] otherwise.
  bool get isInMay => month == 5;

  /// * return [true] if the date is In June, [false] otherwise.
  bool get isInJune => month == 6;

  /// * return [true] if the date is In July, [false] otherwise.
  bool get isInJuly => month == 7;

  /// * return [true] if the date is In August, [false] otherwise.
  bool get isInAugust => month == 8;

  /// * return [true] if the date is In September, [false] otherwise.
  bool get isInSeptember => month == 9;

  /// * return [true] if the date is In October, [false] otherwise.
  bool get isInOctober => month == 10;

  /// * return [true] if the date is In November, [false] otherwise.
  bool get isInNovember => month == 11;

  /// * return [true] if the date is In December, [false] otherwise.
  bool get isInDecember => month == 12;

  /// day of week family

  /// * return [true] if the date is Monday, [false] otherwise.
  bool get isMonday => weekday == DateTime.monday;

  /// * return [true] if the date is Tuesday, [false] otherwise.
  bool get isTuesday => weekday == DateTime.tuesday;

  /// * return [true] if the date is Wednesday, [false] otherwise.
  bool get isWednesday => weekday == DateTime.wednesday;

  /// * return [true] if the date is Thursday, [false] otherwise.
  bool get isThursday => weekday == DateTime.thursday;

  /// * return [true] if the date is Friday, [false] otherwise.
  bool get isFriday => weekday == DateTime.friday;

  /// * return [true] if the date is Saturday, [false] otherwise.
  bool get isSaturday => weekday == DateTime.saturday;

  /// * return [true] if the date is Sunday, [false] otherwise.
  bool get isSunday => weekday == DateTime.sunday;

  /// return new [DateTime] without the time part
  /// for example =>  `2020-01-01T12:51:42.325`
  /// to =>  `2020-01-01T00:00:00.000`
  DateTime withoutTime() => DateTime(year, month, day);

  /// * return   [true] the last saturday of the month
  bool get isLastSaturdayThisMonth =>
      isSaturday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return  [true] the last sunday of the month
  bool get isLastSundayThisMonth =>
      isSunday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return   [true] the last monday of the month
  bool get isLastMondayThisMonth =>
      isMonday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return   [true] the last tuesday of the month

  bool get isLastTuesdayThisMonth =>
      isTuesday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return   [true] the last wednesday of the month
  bool get isLastWednesdayThisMonth =>
      isWednesday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return   [true] the last thursday of the month
  bool get isLastThursdayThisMonth =>
      isThursday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return   [true] the last friday of the month
  bool get isLastFridayThisMonth =>
      isFriday &&
      month + 1 == DateTime(year, month, day + DateTime.daysPerWeek).month;

  /// * return [true] the first saturday of the month
  /// TODO :: date wont work with last month of the year
  // bool get isFirstSaturdayThisMonth =>
  //     isSaturday &&
  //     subtract(const Duration()).month ==
  //         DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return  [true] the first sunday of the month
  // bool get isFirstSundayThisMonth =>
  //     isSunday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return   [true] the first monday of the month
  // bool get isFirstMondayThisMonth =>
  //     isMonday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return   [true] the first tuesday of the month

  // bool get isFirstTuesdayThisMonth =>
  //     isTuesday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return   [true] the first wednesday of the month
  // bool get isFirstWednesdayThisMonth =>
  //     isWednesday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return   [true] the first thursday of the month
  // bool get isFirstThursdayThisMonth =>
  //     isThursday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // /// * return   [true] the first friday of the month
  // bool get isFirstFridayThisMonth =>
  //     isFriday &&
  //     month - 1 == DateTime(year, month, day - DateTime.daysPerWeek).month;

  // bool get isLastSaturdayOfTheYear => day == DateTime.saturday;
  // bool get isLastSundayOfTheYear => day == DateTime.sunday;
  // bool get isLastMondayOfTheYear => day == DateTime.monday;
  // bool get isLastTuesdayOfTheYear => day == DateTime.tuesday;
  // bool get isLastWednesdayOfTheYear => day == DateTime.wednesday;
  // bool get isLastThursdayOfTheYear => day == DateTime.thursday;
  // bool get isLastFridayOfTheYear => day == DateTime.friday;

  /// returns true if date is between tow dates
  // bool isBetween(DateTime start, DateTime end) =>
  //     start.isBefore(this) && end.isAfter(this);

  /// returns true if date year is leaap year
  bool get isLeapYear {
    return year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
  }

  ///
  DateTime get dateOnly => DateTime(year, month, day);

  ///
  DateTime withTime({
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  }) =>
      DateTime(year, month, day, minute, second, microsecond, microsecond);
}

///  TODO ::
/// *  firstDayOfMonth
/// *  lastDayOfMonth
///
/// *  firstDayOfWeek
/// *  lastDayOfWeek
///
/// *  firstDayNextWeek
/// *  firstDayNextMonth
/// *  firstDayNextYear
///
/// *  lastDayNextWeek
/// *  lastDayNextMonth
/// *  lastDayNextYear
///
/// *  firstDayPreviousWeek
/// *  firstDayPreviousMonth
/// *  firstDayPreviousYear
///
/// *  lastDayPreviousWeek
/// *  lastDayPreviousMonth
/// *  lastDayPreviousYear

/// * isSameWeek
