import 'Questions.dart';

class Question1 extends Questions {
  @override
  void executeAnswer() {
    /* print("Please enter 1st Number");
    int firstNumber = int.parse(stdin.readLineSync());

    print("Please enter 2nd Number");
    int secondNumber = int.parse(stdin.readLineSync()); */
    print("\nOutput is => ${_getNumbersInStringFormat(45, 12)}");
  }

  String _getNumbersInStringFormat(int firstNumber, int secondNumber) {
    return "\'$firstNumber $secondNumber\'";
  }
}
