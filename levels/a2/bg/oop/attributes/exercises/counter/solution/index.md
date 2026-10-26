---
title: 'Решение: Брояч'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Атрибутът има `is rw`. Затова аксесорът му връща контейнер, в който можете да записвате. `= 0` дава на атрибута начална стойност. Първото `say` проверява нов брояч. Той наистина започва от стойността по подразбиране, `0`.

1. Можете да записвате в аксесора. Затова `++` работи, както очаквате. Той добавя 1 към брояча.

{% include nav.html %}
