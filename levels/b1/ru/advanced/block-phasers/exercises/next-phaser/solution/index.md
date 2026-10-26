---
title: 'Решение: После каждого шага'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Фазер `NEXT` написан первым, но выполняется в *конце* каждого прохода. К этому моменту тело уже прибавило текущее число к `$sum`.

1. Поэтому после первого прохода `$sum` равен `1`. После второго он равен `3`, а после третьего — `6`. В цикле `NEXT` — это способ выполнить что-то между проходами. Он отличается от `FIRST`, который выполняется один раз в начале. Он отличается и от `LAST`, который выполняется один раз в конце.

{% include nav.html %}
