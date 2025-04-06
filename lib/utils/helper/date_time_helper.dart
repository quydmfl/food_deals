import 'package:easy_localization/easy_localization.dart';
import 'package:food_deals/core/env/app_config.dart';

abstract class DateTimeHelper {
  /// Format HH:mm:ss
  /// [time] HH:mm:ss
  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  static String format(DateTime source, {DateFormat? format}) {
    try {
      format = format ?? DateFormat(
        AppConfig.instance.env.defaultDateTimeFormat,
      );
      return format.format(source);
    } catch (e) {
      return DateFormat.yMd().format(source);
    }
  }
}