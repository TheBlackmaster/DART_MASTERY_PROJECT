void main(){
  // Intro to Functions, Function arguments, Return values
String drugName;
int quantity;
int reorderLevel;

drugName = 'Amoxicillin';
quantity = 12;
reorderLevel = 20;

stockCalculator(quantity, reorderLevel, drugName);

}

void stockCalculator(int quantity, int reorderLevel, String drugName){
if(quantity < reorderLevel){
  print('Time to reorder $drugName');
} else {
  print('$drugName stock is sufficient');
}}