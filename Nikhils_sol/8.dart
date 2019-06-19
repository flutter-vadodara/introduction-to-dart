import 'dart:io';
  
class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;
  
  MyClass(int this.anInt, String this.aString, double this.aDouble);
}

final variables = MyClass(0,'to',1);

main()
{
  stdout.write("${variables.anInt} ");
  stdout.write("${variables.aString} "); //to print 0 to 1.0 in a one line
  stdout.write(variables.aDouble);
}
