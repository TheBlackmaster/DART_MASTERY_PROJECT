class Medicine {
  String _name;
  double _price;
  int _quantity;

  // Default Constructor
  Medicine(this._name, this._price, this._quantity);

  // Expired Medicine Constructor
  Medicine.expired(String name, double price)
    : _name = name,
      _price = price,
      _quantity = 0;

  // Getters
  String get name => _name;
  double get price => _price;
  int get quantity => _quantity;

  // Setters
  set name(String name) => this._name = name;
  set price(double price) => this._price = price;
  // set quantity(int quantity) => this._quantity = quantity;

  // Restock Method
  void restock(int unitsToAdd) {
    if (unitsToAdd > 0) {
      _quantity = _quantity + unitsToAdd;
    } else {
      print('Cannot restock negative or zero units');
    }
  }
}
