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