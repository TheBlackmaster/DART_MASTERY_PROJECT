// switch statements, enumerations, for loops
enum TherapeuticClass { Antibiotic, Antihypertensive, Analgesic, Antidiabetic }

void main() {
  List drugList = [
    {"drugName": "Ciprofloxacin", "class": TherapeuticClass.Antibiotic},
    {"drugName": "Lisinopril", "class": TherapeuticClass.Antihypertensive},
    {"drugName": "Paracetamol", "class": TherapeuticClass.Analgesic},
    {"drugName": "Metformin", "class": TherapeuticClass.Antidiabetic},
  ];

  for (var drug in drugList) {
    print('Drug Name: ${drug['drugName']} | Class: ${drug['class'].toString().split('.').last}');

    switch (drug['class']) {
      case TherapeuticClass.Antibiotic:
        print('Guidiance: Check culture results before dispensing');
        break;
      case TherapeuticClass.Antihypertensive:
        print('Guidiance: Monitor patient\'s blood pressure regularly');
        break;
      case TherapeuticClass.Analgesic:
        print('Guidiance: Ensure correct dosage to avoid dependence');
        break;
      case TherapeuticClass.Antidiabetic:
        print('Guidiance: Remind patient to check blood sugar often');
        break;
      default:
        print("No specific advice available.");
    }
  }
}
