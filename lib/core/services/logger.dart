import 'package:logger/logger.dart';
import 'package:logging/logging.dart' as Logging;

class Log {
  static final _logger = Logger(
      printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 100,
    colors: true,
    printEmojis: true,
    printTime: false,
  ));

  static void setupLogger() {
    Logging.Logger.root.level = Logging.Level.ALL;
    Logging.Logger.root.onRecord.listen((Logging.LogRecord rec) {
      if (rec.level == Logging.Level.WARNING)
        _logger.w(rec.message);
      else if (rec.level == Logging.Level.SEVERE)
        _logger.e(rec.message);
      else if (rec.level == Logging.Level.SHOUT)
        _logger.i(rec.message);
      else
        _logger.d(rec.message);
    });
  }
}
