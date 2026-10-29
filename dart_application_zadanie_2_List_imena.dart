import 'dart:io';
void main(){
  //Задание 2 На ввод имен в List
  List<String> names = [];

  print('Введите 1 имя: ');
  String name1 = stdin.readLineSync()!;
  names.add(name1);
  
  print('Введите 2 имя: ');
  String name2 = stdin.readLineSync()!;
  names.add(name2);

   print('Введите 3 имя: ');
  String name3 = stdin.readLineSync()!;
  names.add(name3);

  print('Итог: $names');
}
