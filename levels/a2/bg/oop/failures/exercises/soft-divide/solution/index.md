---
title: 'Решение: Мека реципрочна стойност'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `reciprocal(4)` работи както обикновено. Тя връща `1 / 4`. Това е `0.25`.

1. `reciprocal(0)` извиква `fail`. Затова тя връща `Failure`. `Failure` е недефинирана стойност с грешка вътре. Операторът `//` гледа лявата си страна. Ако лявата страна е недефинирана, `//` връща дясната си страна. Затова получаваме резервната стойност, `undefined`.

1. Използването на `//` се брои за обработка на провала. `//` само проверява дали стойността е дефинирана. Той не използва стойността. Затова `Failure` остава мек. Raku никога не го хвърля като истинско изключение.

{% include nav.html %}
