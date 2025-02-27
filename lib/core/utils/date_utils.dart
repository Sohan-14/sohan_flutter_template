import 'package:intl/intl.dart';
import 'package:sohan_flutter_template/core/config/app_strings.dart';

class DateUtils{
  DateUtils._();

  static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String formatTime(DateTime date) {
    return DateFormat('HH:mm:ss').format(date);
  }

  static String formatDateTime(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
  }

  static String timeAgo(DateTime date) {
    Duration difference = DateTime.now().difference(date);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} ${AppStrings.secondsAgo}';
    }
    else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} ${AppStrings.minutesAgo}';
    }
    else if (difference.inHours < 24) {
      return '${difference.inHours} ${AppStrings.hoursAgo}';
    }
    else {
      return '${difference.inDays} ${AppStrings.daysAgo}';
    }
  }
}