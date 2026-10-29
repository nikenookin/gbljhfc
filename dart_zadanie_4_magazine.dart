import 'dart:io';

void main() {
  //Задание 4 На магазин.С
  Map<String, int> products = {
    'milk': 80,
    'bread': 35,
    'apple': 130,
    'sugar': 100,
    'coffee': 20,
    'Tun Tun Tun Sahur': 6767, 
  };

  print('Доступные товары: $products, всего товаров ${products.length}');
  stdout.write('Введите название товара: ');
  String? query = stdin.readLineSync()?.trim().toLowerCase();

  if (query != null && products.containsKey(query)) {
    print('Цена товара "$query": ${products[query]} сом.');
  } else {
    print('Извините, такого товара нету.');
  }
}
