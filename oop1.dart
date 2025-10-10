class Medicine {
  String name;
  double price;
  int quantity;

  Medicine(this.name, this.price, this.quantity);

  void display() {
    print('''
Medicine name: $name;
Price: ₦$price
Quantity in stock: $quantity
''');
  }
}

void main() {
  Medicine m1=Medicine('Paracetamol', 250, 50);
  m1.display();
}
