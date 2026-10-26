---
title: 'Решение: После каждого шага'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Исходный код можно найти в файле [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Вывод

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Комментарии

1. Фазер `NEXT` стоит в коде первым. Но он выполняется в *конце* каждого шага. К этому времени тело уже прибавило текущее число к `$sum`.

1. Поэтому после первого шага `$sum` равен `1`. После второго шага он равен `3`. После третьего шага он равен `6`. С `NEXT` цикл может выполнять код между своими шагами. `FIRST` работает иначе: он выполняется один раз в начале. `LAST` тоже работает иначе: он выполняется один раз в конце.

{% include nav.html %}
