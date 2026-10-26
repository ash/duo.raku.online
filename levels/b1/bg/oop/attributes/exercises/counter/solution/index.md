---
title: 'Решение: Брояч'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Намерете програмата във файла [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Изход

```
0
5
```

## Коментари

1. Атрибутът е деклариран с `is rw`, така че аксесорът му връща записваем контейнер. `= 0` му дава начална стойност. Първото `say` показва, че нов брояч наистина започва от тази стойност по подразбиране, `0`.

1. Аксесорът е записваем, така че `++` може да го увеличи. Това работи, както бихте очаквали.

{% include nav.html %}
