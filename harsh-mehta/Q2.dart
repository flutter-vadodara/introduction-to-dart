String foo = 'a string';
String bar; 

String baz = foo ??= baz;

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