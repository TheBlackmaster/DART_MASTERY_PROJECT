// if/else statements
// Scenario (Inventory Management):
// A pharmacist is checking whether a batch of Amoxicillin 500mg capsules is expired.


void main(){
String drugName;
int expiryYear;
int currentYear;

drugName = 'Amoxicillin 500mg';
expiryYear = 2024;
currentYear = 2025;

print('''
Drug: $drugName
Expiry Year: $expiryYear
''');

currentYear > expiryYear ? print('Status: Expired – Do not dispense') : print('Safe to use');
}