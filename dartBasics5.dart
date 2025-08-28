// Arithmetic, String Operations, Logical Operators

void main() {
  String drugName = 'Cetirizine 10mg';
  int pharmacyStock = 30;
  int dailyDose = 2;
  final supplyDuration;
  supplyDuration = pharmacyStock / dailyDose;

  print('''
Drug (system record): ${drugName.toLowerCase()}
Current Stock: $pharmacyStock tablets
Daily Dose: $dailyDose tablets
Days of Supply: $supplyDuration
''');

supplyDuration < 14 ? print('Status: Not sufficient — needs refill soon'): print('Status: Sufficient for at least 14 days');
}
