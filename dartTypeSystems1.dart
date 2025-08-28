// var and Type Inference
// Scenario (Inventory Management):
// You want to record the drug name and current stock count of a new batch of Aspirin 100mg tablets. Use var to demonstrate Dart’s type inference.

void main() {
  var drugName;
  var currentStock;

  drugName = 'Aspirin 100mg';
  currentStock = 200;

  // Print the details
  print("Drug: $drugName");
  print("Stock: $currentStock tablets");

  print('${drugName.runtimeType} is the runtime type for the Drug Name Variable');
  print('${currentStock.runtimeType} is the runtime type for the Current Stock Variable');

  // Note: once inferred, 'drugName' cannot be reassigned to a non-string,
  // and 'currentStock' cannot be reassigned to a non-int.
}
