---
title: 'Решение: Номера дней недели'
translations_gpt: true
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. Если записать константы в виде пар, можно выбрать числа. Здесь они начинаются с `1`.

1. Если вызвать тип перечисления как `Day(5)`, он выполняет обратный поиск. Он находит константу со значением `5`, то есть `Fri`. Так же `Day(1)` даёт `Mon`. Это противоположность `Fri.value`, который идёт от имени к числу.

{% include nav.html %}
