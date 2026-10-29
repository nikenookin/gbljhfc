void main() {
  String name = 'Али';
  int age = 15;
  double politenessRating = 0.0;
  bool honoredSwearer = true;

  print('Имя: $name, Возраст: $age, Рейтинг вежливости: $politenessRating, Заслуженный матершинник: $honoredSwearer');

  int swearCount = 3;

  if (swearCount == 0) {
    print('Красавчик');
  } else if (swearCount >= 1 && swearCount <= 5) {
    print('Предупреждение');
  } else {
    print('Наряд вне очереди по аудитории');
  }

  for (int i = 0; i < 10; i++) {
    print('Я больше не буду сквернословить на занятиях по программированию');
  }
}