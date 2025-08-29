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
      metforminStock -= 5;
      if (patientIds.contains(999)) {
        patientIds.remove(999);
        metforminStock += 5;
        print('Skipping Patient 999 (blacklisted)');
        break;
      } else {
        print(
          'Dispensing to patient $patient ... Remaining stock: ${metforminStock}',
        );
      }
    }
  }
}
