// void main() {
//   // Задания номер 
//   String name = "Джантай";
//   String status = "студент"; 

//   print("Имя пользователя: $name");
//   print("Текущий статус: $status");

//   if (status == "студент" || status == "учащийся") {
//     print("Категория: Учащийся бездарь");
//   } else if (status == "рабочий" || status == "заводчанин") {
//     print("Категория: Работающий класс");
//   } else {
//     print("Категория: Неизвестная категория.");
//   }
// }
// void main() {
// // Задание номер 2
//   double purchaseAmount = 3500.0; 
//   double discountPercentage = 0.0;

//   if (purchaseAmount >= 5000) {
//     discountPercentage = 25.0; 
//   } else if (purchaseAmount >= 3000) {
//     discountPercentage = 15.0; 
//   } else if (purchaseAmount >= 1000) {
//     discountPercentage = 5.0; 
//   } else {
//     discountPercentage = 0.0;  
//   }

//   double discountAmount = purchaseAmount * (discountPercentage / 100);
//   double finalAmount = purchaseAmount - discountAmount;

//   print("Сумма вашей покупки: $purchaseAmount сом");
//   print("Вам присвоена скидка: $discountPercentage%");
//   print("Сумма скидки составила: $discountAmount сом");
//   print("Итого к оплате со скидкой: $finalAmount сом");
// }
void main() {
  int age = 16;
  bool hasTicket = true;
  bool isVip = false;
  bool isAccompaniedByAdult = true;

  bool canEnter = (hasTicket || isVip) && (age >= 18 || isAccompaniedByAdult);

  print("Информация о зрителе:");
  print("Возраст: $age лет");
  print("Наличие билета: $hasTicket");
  print("VIP-статус: $isVip");
  print("Сопровождает взрослый: $isAccompaniedByAdult");
  print("--------------------------------------------------");

  if (canEnter) {
    print("✅ Проход разрешен. Приятного просмотра!");
  } else {
    print("❌ Проход запрещен. Не выполнены условия входа.");
  }
}