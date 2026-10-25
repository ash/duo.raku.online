---
title: 'Solution: Таблица на функциите'
---

{% include menu.html %}

Тази програма вероятно е добър пример за цикъла `loop`. С `loop` можете да зададете двата края и стъпката. Задавате ги директно в единиците, които ви трябват. Можете да се върнете към тази задача по-късно, когато научите за _последователностите_ в Raku.

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

Програмата отпечатва дълга таблица x — f(x). Ето част от изхода:

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

Добра идея е да превърнете изхода в графика. Можете да го направите с друга програма, например Excel или gnuplot.

<img src="../f-graph.png" style="width: 500px; height: auto" />

{% include nav.html %}
