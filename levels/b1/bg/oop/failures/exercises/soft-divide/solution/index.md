---
title: 'Решение: Мека реципрочна стойност'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Намерете програмата във файла [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Изход

```
0.25
undefined
```

## Коментари

1. `reciprocal(4)` работи нормално и връща `1 / 4`, тоест `0.25`.

1. `reciprocal(0)` извиква `fail`, така че връща `Failure`, който е недефиниран. Операторът `//` връща дясната си страна винаги, когато лявата му страна е недефинирана. Затова получаваме резервната стойност `undefined`.

1. Използването на `//` се брои за обработка на провала. Операторът проверява дали стойността е дефинирана, но не използва стойността. Затова `Failure` остава мек и никога не се хвърля като истинско изключение.

{% include nav.html %}
