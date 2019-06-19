class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // Create a named constructor called "black" here:
  Color.black()
  {
    // Setting all parameters to value 0
    this.red = 0;
    this.green = 0; 
    this.blue = 0;
  }
}

void main()
{
  var colors = new Color.black();
  print(colors.red);
  print(colors.green);
  print(colors.blue);  
}
