// //Задание: Программа на Таймер
// void main() {
//   print('До начала');
//   for (int i = 10; i >= 1; i--) {
//     print(i);
//   }
// print('Старт!');
// }

//Задание: Программа "Попугай"
// import 'dart:io';

// void main() {
//   print('Игра "Попугай". Для выхода напишите "СТОП":');
  
//   while (true) {
//     stdout.write('> ');
//     String? input = stdin.readLineSync();
    
//     if (input == 'СТОП') {
//       print('Попугай прощается: Пока-пока!');
//       break;
//     }
    
//     print('Попугай повторяет: $input');
//   }
// }

// //Задание Вывод четных чисел
// void main() {
//   print('Четные числа от 1 до 20:');
//   for (int i = 1; i <= 20; i++) {
//     if (i % 2 != 0) {
//       continue;
//     }
//     print(i);
//   }
// }

// // Задание на Сейф
// import 'dart:io';

// void main() {
//   String correctPin = '6767';
//   String? enteredPin;

//   do {
//     stdout.write('Введите пин-код от сейфа: ');
//     enteredPin = stdin.readLineSync();

//     if (enteredPin != correctPin) {
//       print('Неверный пин-код! Попробуйте еще раз.\n');
//     }
//   } while (enteredPin != correctPin);

//   print('Доступ разрешен! Сейф открыт.');
// }

// Задание на интерактивное консольное меню магазина/банкомата
import 'dart:io';

void main() {
  double balance = 5000.0;

  print('Добро пожаловать в банкомат Трипл Т!');

  while (true) {
    print('\nГлавное меню:');
    print('1. Проверить баланс');
    print('2. Снять наличные');
    print('3. Внести средства');
    print('4. Выход');
    stdout.write('Выберите пункт меню (1-4): ');

    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');
    if (choice == null) {
      print('Ошибка: введено не число! Пожалуйста, используйте цифры от 1 до 4.');
      continue;
    }

    switch (choice) {
      case 1:
        print('Ваш текущий баланс: $balance сиксевенкоинов.');
        break;

      case 2:
        stdout.write('Введите сумму сиксевенкоинов для снятия: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? '');

        if (amount == null || amount <= 0) {
          print('Ошибка: некорректная сумма.');
        } else if (amount > balance) {
          print('Ошибка: недостаточно средств на счете банка Трипл Т.');
        } else {
          balance -= amount;
          print('Успешно снято: $amount сиксевенкоинов. Остаток: $balance сиксевенкоинов.');
        }
        break;

      case 3:
        stdout.write('Введите сумму для пополнения: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? '');

        if (amount == null || amount <= 0) {
          print('Ошибка: некорректная сумма для пополнения.');
        } else {
          balance += amount;
          print('Счет успешно пополнен на $amount руб. Баланс: $balance руб.');
        }
        break;

      case 4:
        print('Спасибо, что воспользовались нашим банкоматом Трипл Т!');
        return;

      default:
        print('Ошибка: такого пункта меню не существует. Выберите от 1 до 4.');
    }
  }
}