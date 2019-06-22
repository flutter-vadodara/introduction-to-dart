// This method should return the uppercase version of `str`
// or null if `str` is null.
String upperCaseIt(String str) {
  // Try conditionally accessing the `toUpperCase` method here.
  if(str != null)
    return str.toUpperCase();
  return "null";  
}
void main(){
  String str;
  print(upperCaseIt("sampleString"));
  print(upperCaseIt(str));
}