// Pharmacy System: Patient Medication Records using Dart Type System
void main() {
  // const: fixed value across all records (never changes)
  const pharmacyName = "CityCare Pharmacy";

  // final: fixed once assigned (e.g., NDCs - here we mock one value)
  final ndc = "00093-1234-56";

  // dynamic: flexible type (can accept string, int, etc.)
  dynamic remarks1 = "N/A";
  dynamic remarks2 = 123;
  dynamic remarks3 = "Follow-up in 2 weeks";

  // Create a list of maps representing patient prescriptions
  List<Map<String, dynamic>> prescriptions = [
    {
      "patientName": "John Doe",
      "drugName": "Metformin 500mg",
      "quantity": 60,
      "dailyDose": 2,
      "remarks": remarks1
    },
    {
      "patientName": "Mary Jane",
      "drugName": "Amlodipine 5mg",
      "quantity": 20,
      "dailyDose": 1,
      "remarks": remarks2
    },
    {
      "patientName": "Ali Yusuf",
      "drugName": "Simvastatin 20mg",
      "quantity": 90,
      "dailyDose": 1,
      "remarks": remarks3
    },
  ];

  // Print pharmacy header
  print("Pharmacy: $pharmacyName\n");

  // Loop through prescriptions
  for (var record in prescriptions) {
    // Extract values from the map
    String patientName = record["patientName"];
    String drugName = record["drugName"];
    int quantity = record["quantity"];
    int dailyDose = record["dailyDose"];
    dynamic remark = record["remarks"]; // dynamic can be String or int

    // Calculate days of supply
    int daysOfSupply = quantity ~/ dailyDose; // integer division

    // Print formatted details
    print("Patient: $patientName | Drug: $drugName | Quantity: $quantity | Daily Dose: $dailyDose");
    print("Days of Supply: $daysOfSupply");

    // Decision making with control flow
    if (daysOfSupply < 30) {
      print("Status: Needs refill soon!");
    } else {
      print("Status: OK");
    }

    // Print remarks (dynamic type)
    print("Remarks: $remark\n");
  }

  // Show how 'final' works (NDC cannot be reassigned)
  print("Example NDC (final): $ndc");
  // ndc = "11111-2222-33"; // ❌ would cause error if uncommented
}
