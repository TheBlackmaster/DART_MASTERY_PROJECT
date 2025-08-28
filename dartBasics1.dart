// Variable Declaration, Initialization, Printing, and String Interpolation

void main(){
  String drugName;
  int currentStock;
  int reorderLevel;

  drugName = 'Paracetamol 500mg';
  currentStock = 120;
  reorderLevel = 100;

  print("""
Drug = $drugName
Current Stock = $currentStock
Reorder Level = $reorderLevel
""");

if(currentStock <= reorderLevel){
  print('Stock Status: Inufficient (below reorder level)');
}else{
  print('Stock Status: Sufficient (above reorder level)');
}
}