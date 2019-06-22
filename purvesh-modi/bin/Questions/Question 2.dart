import 'Questions.dart';

class Question2 extends Questions {
  String bar;
  @override
  void executeAnswer() {
    String foo = 'a string';
    String baz = foo ?? bar;

    print("baz => $baz");

    print("<<== After update variables ==>>");
    updateSomeVars();
  }

  void updateSomeVars() {
    // Substitute an operator that makes 'a string' be assigned to bar.
    bar ??= 'a string';
    print("bar => $bar");
  }
}
