---
title: 'Решение: Таблица функции'
---

{% include menu.html %}

Наверное, эта программа — хороший пример цикла `loop`. В `loop` вы можете задать оба конца и шаг. Вы задаёте их прямо в нужных вам единицах. Позже вы узнаете о _последовательностях_ в Raku. Тогда вы можете вернуться к этой задаче.

## Код

Вот решение:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Найдите программу в файле [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Вывод

Программа печатает длинную таблицу с x и f(x). Вот её часть:

```console
$ raku exercises/functions/function-table.raku
-3	9
-2.9	8.41
-2.8	7.84

. . .

-0.2	0.04
-0.1	0.01
0	0
0.1	0.01
0.2	0.04

. . .

2.7	7.29
2.8	7.84
2.9	8.41
3	9
```

## Визуализация

Хорошая идея — нарисовать график по выводу программы. Для этого возьмите другую программу, например, Excel или gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
