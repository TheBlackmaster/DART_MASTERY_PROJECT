enum PrescriptionStatus { Pending, Approved, Rejected }

void main() {
  List<Map> prescriptionList = [
    {
      "drugName": "Amoxicillin",
      "status": PrescriptionStatus.Pending,
      "patientName": "John Doe",
    },
    {
      "drugName": "Metformin",
      "status": PrescriptionStatus.Approved,
      "patientName": "Sarah Lee",
    },
    {
      "drugName": "Ibuprofen",
      "status": PrescriptionStatus.Rejected,
      "patientName": "David Smith",
    },
    {
      "drugName": "Amlodipine",
      "status": PrescriptionStatus.Pending,
      "patientName": "Jane Williams",
    },
  ];

  for (var prescription in prescriptionList) {
    switch (prescription['status']) {
      case PrescriptionStatus.Approved:
        print('Prescription for ${prescription['drugName']} has been approved for patient ${prescription['patientName']}.');
        break;
      case PrescriptionStatus.Pending:
        print('Prescription for ${prescription['patientName']} is awaiting approval.');
        break;
      case PrescriptionStatus.Rejected:
        print('Prescription for ${prescription['patientName']} was rejected. Check with doctor.');
        break;
      default:
        print('Error!!!');
    }

    print('''
Patient Name: ${prescription['patientName']}
Drug Name: ${prescription['drugName']}
Status: ${prescription['status'].toString().split('.').last}
''');
  }
}
