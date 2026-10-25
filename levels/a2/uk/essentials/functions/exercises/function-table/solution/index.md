---
title: 'Solution: Таблиця функцій'
---

{% include menu.html %}

Можливо, ця програма — гарний приклад циклу `loop`. У `loop` ви можете задати обидві межі і крок. Ви задаєте їх прямо, в потрібних вам одиницях. Пізніше ви дізнаєтеся про _послідовності_ Raku. Тоді ви можете повернутися до цього завдання.

## Код

Ось рішення:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Знайдіть програму у файлі [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Вивід

Програма виводить довгу таблицю з x і f(x). Ось її частина:

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

## Візуалізація

Добра ідея — намалювати графік за цим виводом. Для цього візьміть іншу програму, наприклад, Excel або gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
