import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';

class LoggerUtils {
  LoggerUtils._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),
  );

  static void debug(String message) {
    if (kDebugMode) _logger.d(message);
  }

  static void info(String message) {
    if (kDebugMode) _logger.i(message);
  }

  static void warning(String message) {
    if (kDebugMode) _logger.w(message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode)  _logger.e(message, time: DateTime.now(), error: error, stackTrace: stackTrace);
  }
}
