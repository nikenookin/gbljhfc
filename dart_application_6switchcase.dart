// // ЗАДАНИЕ НА switchcase
// import 'dart:io' ; void main() {
//   // Задание номер 1 Кофемашина
//  stdout.write('Введите желаемый напиток (espresso, cappuccino, latte, americano): ');

//   String? input = stdin.readLineSync();

//   String token = (input ?? '').trim().toLowerCase();

//   print('\nВы выбрали: "$token"\n');

//   switch (token) {
//     case "espresso":
//       print("Готовится крепкий Эспрессо. Заберите кофе!");
//       break;
//     case "cappuccino":
//       print("Готовится Капучино с пышной молочной пенкой. Заберите кофе!");
//       break;
//     case "latte":
//       print("Готовится нежный Латте с молоком. Заберите кофе!");
//       break;
//     case "americano":
//       print("Готовится классический Американо. Заберите кофе!");
//       break;
//     default:
//       print("Ошибка: Неизвестный напиток. Пожалуйста, выберите корректный напиток, написав dart run.");
//   }
// }
import 'dart:io'; 

void main() {
  // Задание 2 Календарь
  stdout.write('Введите день недели (например: monday или sunday): ');

  String? input = stdin.readLineSync();

  String day = (input ?? '').trim().toLowerCase();

  print('\nПроверяем день: "$input"\n');

  switch (day) {
    case "monday":
    case "tuesday":
    case "wednesday":
    case "thursday":
      print("'$input' — это **рабочий день**. Время плодотворной работы!");
      break;

    case "saturday":
    case "sunday":
      print("'$input' — это **выходной день**. Время для отдыха и хобби!");
      break;
     case "friday":
     print("'$input' — это **ЧТО ЭТО??**. А ЭТО СЕГОДНЯ ПЯТНИЦА А ЗАВТРА ВЫХОДНОЙ!");
    default:
      print("❌ Ошибка: '$input' не похож на настоящий день недели. Пожалуйста, проверьте правильность ввода.");
  }
}
