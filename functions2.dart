// Named arguments, Default values, Fat arrow, Scope
// Create a function to calculate the total daily dose of a medication for a patient, with flexibility in arguments.
void main() {
  final dose = calculateDose(
    dosePerTablet: 500,
    frequencyPerDay: 2,
    drugName: 'Metformin',
  );
  print(dose);
}

calculateDose({
  required String drugName,
  required int dosePerTablet,
  required int frequencyPerDay,
  int durationDays = 7,
}) {
  int dailyDose = dosePerTablet * frequencyPerDay;
  int weeklyDose = dailyDose * durationDays;

  mgToGrams(int mg) => mg / 1000;

  return '''
Drug Name: $drugName
Daily Dose: $dailyDose mg (${mgToGrams(dailyDose)} g)
Total over 7 days: $weeklyDose mg (${mgToGrams(weeklyDose)} g)
''';
}
