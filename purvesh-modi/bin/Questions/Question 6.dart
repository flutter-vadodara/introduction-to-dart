import 'Questions.dart';

class Question6 extends Questions {
  List<double> _prices = [];

  // Add a "total" getter here:
  double get total => _prices.reduce((value, element) => value + element);

  // Add a "prices" setter here:
  void set prices(List<double> values) {
    values.forEach((value) {
      if (value < 0) {
        throw InvalidPriceException();
      }
    });
    _prices = values;
  }

  @override
  void executeAnswer() {}
}

class InvalidPriceException {}
