// // ЗАДАНИЕ НА КОНСОЛЬНЫЙ ВВОД
// import 'dart:io'; 
// // Работа с знакомством
// void main() {
//   //Чтобы все работало корректно, советуется писать на английском.
//   stdout.write('Введите ваше имя: ');
//   String? nameInput = stdin.readLineSync();

//   stdout.write('Введите ваш город: ');
//   String? cityInput = stdin.readLineSync();

//   stdout.write('Введите ваш любимый язык программирования: ');
//   String? langInput = stdin.readLineSync();

//   print('\n----------------------------------------');

//   print('$nameInput из города $cityInput, уважает $langInput — отличный выбор!');
// }
// import 'dart:io'; 
// // Работа с калькулятором
// void main() {

//   stdout.write('Введите текущий год (например, 2026): ');
//   String currentYearInput = stdin.readLineSync() ?? '';

//   stdout.write('Введите ваш год рождения: ');
//   String birthYearInput = stdin.readLineSync() ?? '';


//   int currentYear = int.parse(currentYearInput);
//   int birthYear = int.parse(birthYearInput);

//   int age = currentYear - birthYear;

//   print('----------------------------------------');
//   print('Ваш текущий возраст: $age лет.');
// }
import 'dart:io';
// Задание номер 3 с калькулятором
void main() {

  stdout.write('Введите первое число: ');
  String input1 = stdin.readLineSync() ?? '0';

  stdout.write('Введите второе число: ');
  String input2 = stdin.readLineSync() ?? '0';

  double num1 = double.parse(input1);
  double num2 = double.parse(input2);

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;

  print('\n----------------------------------------');
  print('Результаты вычислений для чисел $num1 и $num2:');
  print('• Сложение ($num1 + $num2) = $sum');
  print('• Вычитание ($num1 - $num2) = $difference');
  print('• Умножение ($num1 * $num2) = $product');
}
