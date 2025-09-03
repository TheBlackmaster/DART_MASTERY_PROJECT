void main(){
  // Intro to Functions, Function arguments, Return values
String drugName;
int quantity;
int reorderLevel;

drugName = 'Amoxicillin';
quantity = 12;
reorderLevel = 20;

final stockLevel = stockCalculator(quantity, reorderLevel, drugName);
print(stockLevel);
}

String stockCalculator(int quantity, int reorderLevel, String drugName){
if(quantity < reorderLevel){
  return 'Time to reorder $drugName';
} else {
  return '$drugName stock is sufficient';
}}