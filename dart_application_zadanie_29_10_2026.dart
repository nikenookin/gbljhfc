// void main(){
//   //Задание 1 на List Города.
//   List<String> city = ['Bishkek', 'Osh', 'Kara-Kyl', 'Balykchi', 'Batken'];
//   print({city.length});
//   print('Первый город: ${city.first}. Последний город: ${city.last}');
//   }


// import 'dart:io';
// void main(){
//   //Задание 2 На ввод имен в List
//   List<String> names = [];

//   print('Введите 1 имя: ');
//   String name1 = stdin.readLineSync()!;
//   names.add(name1);
  
//   print('Введите 2 имя: ');
//   String name2 = stdin.readLineSync()!;
//   names.add(name2);

//    print('Введите 3 имя: ');
//   String name3 = stdin.readLineSync()!;
//   names.add(name3);

//   print('Итог: $names');
// }


// void main() {
//   //Задание 3 На вычет среднего арифмtтического
//   List<int> grades = [4, 5, 3, 5, 4, 5, 2];
//   int sum = 0;

//   for (var grade in grades) {
//     sum += grade;
//   }

//   double average = sum / grades.length;

//   print('Сумма оценок: $sum');
//   print('Средний арифметический балл: ${average}');
// }


// import 'dart:io';

// void main() {
//   //Задание 4 На магазин.С
//   Map<String, int> products = {
//     'milk': 80,
//     'bread': 35,
//     'apple': 130,
//     'sugar': 100,
//     'coffee': 20,
//     'Tun Tun Tun Sahur': 6767, 
//   };

//   print('Доступные товары: $products, всего товаров ${products.length}');
//   stdout.write('Введите название товара: ');
//   String? query = stdin.readLineSync()?.trim().toLowerCase();

//   if (query != null && products.containsKey(query)) {
//     print('Цена товара "$query": ${products[query]} сом.');
//   } else {
//     print('Извините, такого товара нету.');
//   }
// }

import 'dart:io';

void main() {
  List<String> t = [];
  while (true) {
    stdout.write('\n== МЕНЕДЖЕР ==\n1. Список\n2. Добавить\n3. Удалить\n4. Выход\nВыбор: ');
    switch (stdin.readLineSync()) {
      case '1':
        if (t.isEmpty) print('Список пуст');
        for (int i = 0; i < t.length; i++) print('${i + 1}. ${t[i]}');
        break;
      case '2':
        stdout.write('Задача: ');
        var s = stdin.readLineSync();
        if (s != null && s.isNotEmpty) t.add(s);
        break;
      case '3':
        if (t.isEmpty) { print('Список пуст'); break; }
        for (int i = 0; i < t.length; i++) print('${i + 1}. ${t[i]}');
        stdout.write('Номер: ');
        int? n = int.tryParse(stdin.readLineSync() ?? '');
        if (n != null && n >= 1 && n <= t.length) t.removeAt(n - 1);
        break;
      case '4':
        return;
      default:
        print('Ошибка: введите число от 1 до 4!');
        break;
    }
  }
}