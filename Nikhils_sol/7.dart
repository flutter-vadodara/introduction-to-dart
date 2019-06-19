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

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception. Catch and handle
  // them using try-on-catch-finally.
  untrustworthy();
  
  try{
    untrustworthy();
  } 
  on ExceptionWithMessage catch(e)
  {
    logger.logException(ExceptionWithMessage, e.message);  
  }
  on Exception
  {
    logger.logException(Exception);
  }
  finally
  {
    logger.doneLogging();
  }
}