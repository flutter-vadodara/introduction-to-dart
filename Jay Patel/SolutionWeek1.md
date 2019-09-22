## 1) The following function takes two integers as parameters. Make it return a string containing both integers separated by a space. For example, stringify(2, 3) should return '2 3'.

```
String stringify(int x, int y) {
  // Return a formatted string here
  return "$x $y";
}
void main()
{
  int x = 2;
  int y = 3;
  print(stringify(x,y));
}
//Output :
2 3
```
## 2)Try putting the ??= and ?? operators to work below.
```
String foo = 'a string';
String bar; // Unassigned objects are null by default.

// Substitute an operator that makes 'a string' be assigned to baz.
String baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}
void main()
{
  print("$foo");
  print("$baz");
  updateSomeVars();
  print("$bar");
}
//Output :
a string
a string
a string
```
## 3) Try using conditional property access to finish the code snippet below.
```
// This method should return the uppercase version of `str`
// or null if `str` is null.
String upperCaseIt(String str) {
  // Try conditionally accessing the `toUpperCase` method here.
  return str?.toUpperCase();
}
void main()
{
  String str;
  print(upperCaseIt("flutter"));
  print(upperCaseIt(str));
}
//Output :
FLUTTER
null
```

## 4) Try setting the following variables to the indicated values.
```
// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = <String>['a', 'b', 'c'];

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = <int>{3, 4, 5};

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = <String, int>{'myKey' : 12}; 

// Assign this an empty List<double>:
final anEmptyListOfDouble = <double>[];

// Assign this an empty Set<String>:
final anEmptySetOfString = <String>{};

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = <double, int>{};
void main()
{
  print(aListOfStrings);
  print(aSetOfInts);
  print(aMapOfStringsToInts);
  print(anEmptyListOfDouble);
  print(anEmptySetOfString);
  print(anEmptyMapOfDoublesToInts);
}
//Output :
[a, b, c]
{3, 4, 5}
{myKey: 12}
[]
{}
{}
```
## 5) Try finishing the following statements, which use arrow syntax.
```
class MyClass {
  int _value1 = 2;
  int _value2 = 3;
  int _value3 = 5;
  
  // Returns the product of the above values:
  int get product => _value1 * _value2 * _value3;
  
  // Adds 1 to _value1:
  void incrementValue1() => _value1 ++;
  
  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'): 
  String joinWithCommas(List<String> strings) => strings.join(',');
}
void main()
{
  var object = new MyClass();
  print(object.product);
  object.incrementValue1();
  print(object._value1);
  print(object.joinWithCommas(['F', 'l', 'u', 't', 't', 'e', 'r']));
}
//Output :
30
3
F,l,u,t,t,e,r
```
## 6) Imagine you have a shopping cart class that keeps a private List <double> of prices. Add the following:

## *A getter called total that returns the sum of the prices
## *A setter that replaces the list with a new one, as long as the new list doesn’t contain any negative prices (in which case the setter should throw an InvalidPriceException).
```
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  // Add a "total" getter here:
  double get total
  {
   double sum_of_prices = 0;
    for(double prices in _prices)
    {
      sum_of_prices += prices;
    }
    return sum_of_prices;
  }
  // Add a "prices" setter here:
  set prices(List<double> value)
  {
    for(double prices in _prices)
    {
     if(prices < 0)
        throw InvalidPriceException(); 
    }
    this._prices = _prices;
  }
}  
void main()
{
  
}
  
```

## 7)Implement tryFunction below. It should execute an untrustworthy method and then do the following:

## *If untrustworthy throws an ExceptionWithMessage, call logger.logException with the exception type and message (try using on and catch).
## *If untrustworthy throws an Exception, call logger.logException with the exception type (try using on for this one).
## *If untrustworthy throws any other object, don’t catch the exception.
## *After everything’s caught and handled, call logger.doneLogging (try using finally).
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
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}

```
## 8)Add a one-line constructor to MyClass that uses this. syntax to receive and assign values for all three properties of the class.
```
class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;
  
  // Create a constructor here.
  MyClass(this.anInt, this.aString, this.aDouble);
}
final Class = MyClass(100, "Flutter", 99.99);
void main()
{
  print(Class.anInt);
  print("");
  print(Class.aString);
  print("");
  print(Class.aDouble);
}
//Output:

100

Flutter

99.99
```
## 9)Give the Color class a constructor named Color.black that sets all three properties to zero.
```
class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // Create a named constructor called "black" here:
  Color.black()
  {
    red = 0;
    green = 0;
    blue = 0;
  }
}
void main()
{
  var object = new Color.black();
  print(object.red);
  print(object.green);
  print(object.blue);
}
//Output:
0
0
0

```
