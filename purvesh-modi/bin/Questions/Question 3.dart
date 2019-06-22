import 'Questions.dart';

class Question3 extends Questions {
  @override
  void executeAnswer() {
    print("upperCaseIt called with null => ${upperCaseIt(null)}");

    print("upperCaseIt called with \'purvesh\' => ${upperCaseIt("purvesh")}");
  }

  String upperCaseIt(String str) {
    return str == null ? null : str.toUpperCase();
  }
}
