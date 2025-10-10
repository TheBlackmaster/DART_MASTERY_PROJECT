import 'medicineClass.dart';
void main(){
Medicine m1 =Medicine('Paracetamol', 250, 10);
m1.restock(5);
print(m1.quantity);

Medicine m1Expired = Medicine.expired('Paracetamol', 250);
print(m1Expired.quantity);
print(m1.quantity);
}