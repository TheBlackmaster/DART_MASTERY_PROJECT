enum VitalStatus { Normal, Warning, Critical }

void main() {
  List<Map> patients = [
    {
      "patientName": "Alice Brown",
      "vitalStatus": VitalStatus.Normal,
      "age": 25,
    },
    {
      "patientName": "Mark Johnson",
      "vitalStatus": VitalStatus.Warning,
      "age": 65,
    },
    {
      "patientName": "Emily Davis",
      "vitalStatus": VitalStatus.Critical,
      "age": 70,
    },
    {
      "patientName": "James Wilson",
      "vitalStatus": VitalStatus.Normal,
      "age": 55,
    },
    {
      "patientName": "Sophia Taylor",
      "vitalStatus": VitalStatus.Warning,
      "age": 30,
    },
  ];

  for (var patient in patients) {
    switch (patient['vitalStatus']) {
      case VitalStatus.Normal:
        print('${patient['patientName']} is stable.');
        break;
      case VitalStatus.Critical:
        print('${patient['patientName']} needs urgent attention!');
        break;
      case VitalStatus.Warning:
        print('${patient['patientName']} requires monitoring.');
        break;
      default:
        print('Error');
    }

    print('''
Patient Name: ${patient['patientName']}
Age: ${patient['age']}
''');

    if (patient['age'] > 60) {
      print('High-risk due to age');
    }
  }
}
