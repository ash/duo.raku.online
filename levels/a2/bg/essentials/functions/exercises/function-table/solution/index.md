---
title: 'Solution: Таблица на функциите'
---

{% include menu.html %}

Може би тази програма е добър пример за цикъла `loop`. В `loop` можете да зададете двата края и стъпката. Задавате ги директно, в единиците, които ви трябват. По-късно ще научите за _последователностите_ в Raku. Тогава можете да се върнете към тази задача.

## Код

Ето решението:

```raku
sub f($x) { $x² }

loop (my $x = -3; $x <= 3; $x += 0.1) {
    say "$x\t{f($x)}";
}
```

🦋 Намерете програмата във файла [function-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/function-table.raku).

## Изход

Програмата отпечатва дълга таблица с x и f(x). Ето една част от нея:

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

Добре е да начертаете графика на изхода. Използвайте друга програма за това, например Excel или gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
