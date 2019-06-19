class MyClass {
  int _value1 = 2;
  int _value2 = 3;
  int _value3 = 5;
  
  // Returns the product of the above values:
  int get product => _value1 * _value2 * _value3;
  
  // Adds 1 to _value1:
  void incrementValue1() => _value1++;
  
  // Returns a string containing each item in the
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