Solution for Q1:
```
String stringify(int x, int y){
  return (x.toString() + " " + y.toString());
}
void main(){
  print(stringify(2, 3));
}
```


Solution for Q2:
```
String foo = 'a string';
String bar; 

String baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= foo;
}

void main(){
  print(foo);
  print(baz);
  updateSomeVars();
  print(bar);
  
}
```

Solution for Q3:
```
String upperCaseIt(String str) {
 if(str != null)
    return str.toUpperCase();
  return "null";  
}
void main(){
  String str;
  print(upperCaseIt("sampleString"));
  print(upperCaseIt(str));
}
```


Solution for Q4:
```
// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = ['a', 'b', 'c'];

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = {3, 4, 5};

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = {'myKey': 12};

// Assign this an empty List<double>:
final anEmptyListOfDouble = <double>[];

// Assign this an empty Set<String>:
final anEmptySetOfString = <String>{};

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = <double, int>{};

void main(){
  print(aListOfStrings);
  print(aSetOfInts);
  print(aMapOfStringsToInts['myKey']);
  print(anEmptyListOfDouble);
  print(anEmptySetOfString);
  print(anEmptyMapOfDoublesToInts);
}
```


Solution for Q5:
```
class MyClass {
  int _value1 = 2;
  int _value2 = 3;
  int _value3 = 5;
  
 
  int get product => _value1 * _value2 * _value3;
  

  void incrementValue1() => _value1++;
  
  
  // list, separated by commas (e.g. 'a,b,c'): 
  String joinWithCommas(List<String> strings) => strings.join(",");
}

void main(){
  var object = new MyClass();
  print(object.product);
  object.incrementValue1();
  print(object._value1);
  print(object.joinWithCommas(['a','b','c']));
}
```

Solution for Q6:
```
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  double get total => _prices.fold(0, (a, b) => a + b);
  
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }
    
    _prices = value;
  }
}
```

Solution for Q7:
```
typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}


abstract class Logger {
  void logException(Type t, [String msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  
  try {
    untrustworthy();
  } on ExceptionWithMessage catch(e){
    logger.logException(ExceptionWithMessage, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
  
}
```
Solution for Q8:
```
class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;
  
  MyClass(this.anInt, this.aString, this.aDouble);
}
```
Solution for Q9:
```
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

    Color.black(){
    blue = 0;
    green = 0;
    red = 0;
  }
}

void main(){
  var object = new Color.black();
  
}
```


