// Strings, Arithmetic, Logical Operators + Lists, Maps, Control Flow

void main() {
  List patientPrescriptions = [
    {
      "patientName": "John Doe",
      "drugName": "Metformin 500mg",
      "dailyDose": 2,
      "quantityDispensed": 60,
    },
    {
      "patientName": "Mary Jane",
      "drugName": "Lisinopril 10mg",
      "dailyDose": 1,
      "quantityDispensed": 20,
    },
    {
      "patientName": "Ali Yusuf",
      "drugName": "Simvastatin 20mg",
      "dailyDose": 1,
      "quantityDispensed": 40,
    },
  ];

  for (var patient in patientPrescriptions) {
    var daysOfSupply = patient['quantityDispensed']~/patient['dailyDose'];
    if (patient['quantityDispensed'] >= 30) {
      print('''
Patient: ${patient['patientName']} | Drug: ${patient['drugName']} | Daily Dose: ${patient['dailyDose']} | Quantity: ${patient['quantityDispensed']}
Days of Supply: ${daysOfSupply}
Status: OK
''');
    } else{
            print('''
Patient: ${patient['patientName']} | Drug: ${patient['drugName']} | Daily Dose: ${patient['dailyDose']} | Quantity: ${patient['quantityDispensed']}
Days of Supply: ${daysOfSupply}
Status: Needs Refill
''');
    }
  }
}
