class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  
  // Add a "total" getter here:
  get total
  {
    double sum = 0;
    for(double price in _prices)
    {
      sum += price;
    }
    if(sum<0)
      throw InvalidPriceException;
    return sum;
  }
  
  // Add a "prices" setter here:
  set price_list(List<double> _prices)
  {
    this._prices = _prices;
  }
}

void main()
{
  List<double> new_list = [1,2,3,4,5];
  List<double> negative_list = [-1];
  ShoppingCart s1 = new ShoppingCart();
  s1._prices = new_list;
  print(s1.total);
  
  //for throwing InvalidPirceException
  s1._prices = negative_list;
  print(s1.total);
}