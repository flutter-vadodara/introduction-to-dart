import 'Questions/Question 1.dart';
import 'Questions/Question 2.dart';
import 'Questions/Question 3.dart';
import 'Questions/Question 4.dart';
import 'Questions/Question 5.dart';
import 'Questions/Question 6.dart';
import 'Questions/Question 7.dart';
import 'Questions/Question 8.dart';
import 'Questions/Question 9.dart';

void main(List<String> args) {
  Question1().executeAnswer();
  Question2().executeAnswer();
  Question3().executeAnswer();

  Question4 q4 = Question4();
  print(q4.aListOfStrings);
  print(q4.aSetOfInts);
  print(q4.aMapOfStringsToInts['myKey']);
  print(q4.anEmptyListOfDouble);
  print(q4.anEmptySetOfString);
  print(q4.anEmptyMapOfDoublesToInts);

  Question5 q5 = Question5();
  print("Product => ${q5.product}");
  q5.incrementValue1();
  print("${q5.joinWithCommas(['a', 'b', 'c', 'd', 'e', 'f'])}");

  Question6 q6 = Question6();
  try {
    q6.prices = [4.5, 10.2, 11.5, 2.0];
    print("Sum of list => ${q6.total}");
  } on InvalidPriceException {
    print("price value cannot be negative.");
  }

  Question7 q7 = Question7();
  q7.tryFunction(untrustworthy, CustomLogger());

  //Question 8
  MyClass myClass;
  myClass = MyClass(4, 5.0, "Purvesh");
  print(myClass);

  //Question 9
  Color blackColor = Color.black();
  print(blackColor);
}

void untrustworthy() {
  throw Exception("Hello there ! Exception with message");
}
