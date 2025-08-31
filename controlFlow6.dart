enum StockLevel { Full, Low, OutOfStock }

void main() {
  final pharmacyStock = [
    {"drugName": "Paracetamol", "stockLevel": StockLevel.Full, "quantity": 120},
    {"drugName": "Ciprofloxacin", "stockLevel": StockLevel.Low, "quantity": 15},
    {
      "drugName": "Lisinopril",
      "stockLevel": StockLevel.OutOfStock,
      "quantity": 0,
    },
    {"drugName": "Metronidazole", "stockLevel": StockLevel.Low, "quantity": 8},
    {"drugName": "Vitamin C", "stockLevel": StockLevel.Full, "quantity": 200},
  ];

  for (var drug in pharmacyStock) {
    print(
      'Drug Name: ${drug['drugName']} | Quantity: ${drug['quantity']} | Stock Level: ${drug['stockLevel'].toString().split('.').last}',
    );

    switch (drug['stockLevel']) {
      case StockLevel.Full:
        print(
          'Drug ${drug['drugName']} is well stocked (${drug['quantity']} units available).',
        );
        break;
      case StockLevel.Low:
        print(
          'Drug ${drug['drugName']} is running low (${drug['quantity']} units left). Reorder soon.',
        );
        break;
      case StockLevel.OutOfStock:
        print('Drug ${drug['drugName']} is out of stock! Reorder immediately.');
        break;
      default:
    }
print('STOCK COUNTER');
    if(drug['stockLevel'] == StockLevel.Low){
print('Low stock');
    }
  }
}
