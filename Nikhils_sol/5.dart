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

void main()
{
  var classes = new MyClass();
  print(classes.product);
  classes.incrementValue1();
  //value incremented by 1
  print(classes._value1);
  print(classes.joinWithCommas(['john','wick','1','2','wow'])); 
}