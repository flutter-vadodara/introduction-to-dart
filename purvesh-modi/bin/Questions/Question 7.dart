import 'Questions.dart';

class Question7 extends Questions {
  @override
  void executeAnswer() {}

  void tryFunction(VoidFunction untrustworthy, Logger logger) {
    // Invoking this method might cause an exception. Catch and handle
    // them using try-on-catch-finally.
    try {
      untrustworthy();
    } on ExceptionWithMessage catch (e) {
      logger.logException(ExceptionWithMessage, e.message);
    } on Exception {
      logger.logException(ExceptionWithMessage);
    } finally {
      logger.doneLogging();
    }
  }
}

typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String msg]);
  void doneLogging();
}

class CustomLogger extends Logger {
  @override
  void doneLogging() {
    print("Logging done !!!");
  }

  @override
  void logException(Type t, [String msg]) {
    msg == null
        ? print("Exception caught => ${t}")
        : print("Exception caught => ${t}\nException cause => $msg");
  }
}
