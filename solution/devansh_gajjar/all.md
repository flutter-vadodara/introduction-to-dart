//1.
String stringify(int x, int y){
  return (x.toString() + " " + y.toString());
}
void main(){
  print(stringify(2, 3));
}

//2.
String foo = 'a string';
String bar; 
String baz = foo ??= baz;
void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= foo;
}
void main(){
  print(baz);
  print(bar);
  updateSomeVars();
  print(foo);
}
//output: 
//a string
//null
//a string

//3.
String upperCaseIt(String str) {
  if(str != null)
  return str.toUpperCase();
  return "Null";  
}
void main(){
  String str;
  print(upperCaseIt("hola"));
  print(upperCaseIt(str));
}
//output: HOLA null

//4.
final aListOfStrings = ['a', 'b', 'c'];
final aSetOfInts = {3, 4, 5};
final aMapOfStringsToInts = {'myKey': 12};
final anEmptyListOfDouble = <double>[];
final anEmptySetOfString = <String>{};
final anEmptyMapOfDoublesToInts = <double, int>{};
void main(){
  print(aListOfStrings);
  print(aSetOfInts);
  print(aMapOfStringsToInts['myKey']);
  print(anEmptyListOfDouble);
  print(anEmptySetOfString);
  print(anEmptyMapOfDoublesToInts);
}
//output: 
//[a, b, c]
//{3, 4, 5}
//12
//[]
//{}
//{}

//5.
class MyClass {
  int _value1 = 2;
  int _value2 = 3;
  int _value3 = 5;
  int get product => _value1 + _value2 + _value3;
  void incrementValue1() => _value1++;
  String joinWithCommas(List<String> strings) => strings.join(",");
}
void main(){
  var ob = new MyClass();
  print(ob.product);
  ob.incrementValue1();
  print(ob._value1);
  print(ob.joinWithCommas(['a','b','c']));
}
//output:
//10
//3
//a,b,c

//6.
class InvalidPriceException {}
class ShoppingCart {
  List<double> _prices = [];
  double get total {
    double sum = 0;
    for(double prices in _prices){
      sum += prices;
    }
    return sum;
  }
  void set prices(List<double> _prices){
    for(double prices in _prices){
      if( prices < 0)
        throw InvalidPriceException();
    }
    this._prices = _prices;
  }
}
void main(){
} 

//7.
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

//8.
class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClass(this.anInt,this.aDouble,this.aString);
  // Create a constructor here.
  this.anInt = Int;
    this.aString  = someString;
    this.aDouble = someDouble;
}

//9.
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
