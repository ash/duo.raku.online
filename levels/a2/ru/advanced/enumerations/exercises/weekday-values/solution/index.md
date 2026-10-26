---
title: 'Решение: Номера дней недели'
translations_gpt: true
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Исходный код можно найти в файле [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Вывод

```
Fri
Mon
```

## Комментарии

1. Мы пишем константы как пары. Так мы можем выбрать числа. Здесь они начинаются с `1`.

1. `Day(5)` вызывает тип перечисления. Он ищет в обратную сторону, от числа к константе. Он находит константу со значением `5`. Эта константа — `Fri`. Так же `Day(1)` даёт `Mon`. `Fri.value` делает обратное. Он идёт от имени к числу.

{% include nav.html %}
