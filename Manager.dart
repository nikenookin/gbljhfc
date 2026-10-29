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