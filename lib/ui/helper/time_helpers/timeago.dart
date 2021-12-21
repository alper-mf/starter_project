/*
import 'package:get/get.dart';


class TimeAgo {
  static String timeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    DateTime notificationDate =
        DateFormat("dd-MM-yyyy h:mma").parse(dateString);
    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);

    if (difference.inDays > 8) {
      return dateString;
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1weekAgo'.tr : 'lastWeek'.tr;
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} ' + 'daysAgo'.tr;
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1dayAgo'.tr : 'yesterday'.tr;
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} ' + 'hoursAgo'.tr;
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1hourAgo'.tr : 'anHourAgo'.tr;
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} ' + 'minutesAgo'.tr;
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1minuteAgo'.tr : 'aMinuteAgo'.tr;
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} ' + 'secondsAgo'.tr;
    } else {
      return 'justNow'.tr;
    }
  }
}
*/