// This method should return the uppercase version of `str`
// or null if `str` is null.
String upperCaseIt(String str) {
  // Try conditionally accessing the `toUpperCase` method here.
  if(str==null)
    return null;
  
  else
    return(str.toUpperCase());
}
void main()
{
  String Null;
  print(upperCaseIt('str'));
  print(upperCaseIt(Null));
}