---
title: 'Solution: Після кожного кроку'
translations_gpt: true
---

{% include menu.html %}

Ось один спосіб розв'язати завдання.

## Код

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Вихідний код можна знайти у файлі [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Вивід

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Коментарі

1. Фазер `NEXT` стоїть у коді першим. Але він запускається *в кінці* кожного проходу. У цей час тіло вже додало поточне число до `$sum`.

1. Тож після першого проходу `$sum` дорівнює `1`. Після другого проходу вона дорівнює `3`. Після третього проходу вона дорівнює `6`. З `NEXT` цикл може запускати код між своїми проходами. `FIRST` інший: він запускається один раз на початку. `LAST` теж інший: він запускається один раз у кінці.

{% include nav.html %}
