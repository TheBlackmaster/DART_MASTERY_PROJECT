// Strings, Arithmetic, Logical Operators + Lists, Maps, Control Flow

void main() {
  List rxInventorySystem = [
    {
      "drugName": "Metformin 500mg",
      "currentStock": 50,
      "reorderLevel": 100,
      "expiryDate": "2025-10-10",
    },
    {
      "drugName": "Atorvastatin 20mg",
      "currentStock": 200,
      "reorderLevel": 50,
      "expiryDate": "2026-05-01",
    },
    {
      "drugName": "Lisinopril 10mg",
      "currentStock": 80,
      "reorderLevel": 80,
      "expiryDate": "2025-12-15",
    },
  ];

  for (var drug in rxInventorySystem) {
    if (drug['currentStock'] <= drug['reorderLevel']) {
      print('''
Drug: ${drug['drugName']} | Stock: ${drug['currentStock']} | Reorder Level: ${drug['reorderLevel']} | Expiry: ${drug['expiryDate']}
Status: Needs Reorder!
''');
    } else {
      print('''
Drug: ${drug['drugName']} | Stock: ${drug['currentStock']} | Reorder Level: ${drug['reorderLevel']} | Expiry: ${drug['expiryDate']}
Status: All good
''');
    }
  }
}
