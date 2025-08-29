// while loops, break, continue
// Scenario (Dispensing Simulation):
// You want to simulate dispensing Metformin 500mg tablets to patients.

void main() {
  const pharmacyName = 'King\'s Pharmacy';

  var metforminStock = 50;
  List<int> patientIds = [101, 102, 999, 103, 104];
  print(pharmacyName);

  while (metforminStock > 10) {
    for (var patient in patientIds) {
      if (patient == 999) {
        print('Skipping Patient 999 (blacklisted)');
        continue;
      } 
      
      
      if(metforminStock >=5 ){
        metforminStock -= 5;
        print('Dispensing to patient $patient ... Remaining stock: $metforminStock');
      } else{
         print('Not enough stock for patient $patient');
        break; // exits loop if stock is insufficient
      }

    }
    break; // prevent infinite loop (one round of dispensing only)
  }
}
