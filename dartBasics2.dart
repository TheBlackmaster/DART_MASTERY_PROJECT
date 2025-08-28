// String Operations, Conversions, Arithmetic, Logical Operators

void main() {
  //1.	Store the following drug details:
  String drugName;
  int currentStock;
  int dailyDispense;

  // 2.	Convert the drug name to uppercase for display.
  drugName = "amoxicillin 500mg capsules";
  currentStock = 250;
  dailyDispense = 35;

  drugName.toUpperCase();

  //3.	Calculate how many days the stock will last 
  double stockDays = currentStock/dailyDispense;

  // 4.	Print the result using string interpolation with 1 decimal place.

  print('''
Drug: ${drugName.toUpperCase()}
Current Stock: $currentStock
Daily Dispense Rate: $dailyDispense
Estimated Stock Days: ${stockDays.toStringAsFixed(1)}
''');

 // 5.	Use a ternary operator to print "OK" if stockDays ≥ 7 else "Reorder soon!".
  stockDays >= 7? print('OK'):print('Reorder Soon');
}
