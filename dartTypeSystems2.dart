// Topics: final, const, var
// Scenario (Drug Information):
// A drug monograph for Atorvastatin 20mg is being added to the pharmacy database.

void main() {
  var drugName;
  final nationalDrugCode;

  drugName = 'Atorvastatin 20mg';
  nationalDrugCode = "00093-1234-56";
  const therapeauticClassAtorvastatin = 'Statin';

  print('''
Drug: $drugName
NDC: $nationalDrugCode
Therapeutic Class: $therapeauticClassAtorvastatin
''');
}


// •	The drug name may vary (entered by pharmacist) → use var.
// •	The NDC (National Drug Code) is fixed once assigned → use final.
// •	The therapeutic class ("Statin") is constant for all instances → use const.

