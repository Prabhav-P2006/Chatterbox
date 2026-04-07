import 'package:logger/logger.dart';

class LoggerDebug {
  static final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );
  /// Standard info logging
  static void info(String message) => logger.i(message);

  /// Warning logging for potential issues
  static void warn(String message) => logger.w(message);

  /// Error logging for failed operations
  static void error(String message, [dynamic error, StackTrace? stack]) => 
      logger.e(message, error: error, stackTrace: stack);

  /// Trace logging for detailed debug info
  static void trace(String message) => logger.t(message);

  /// Fatal logging for critical system failures
  static void fatal(String message) => logger.f(message);
}
