---
title: 'Solution: Непарне чи парне'
---

{% include menu.html %}

Тіло цієї функції досить маленьке. Це добра причина пропустити рутину `return`. Ви також можете пропустити крапку з комою в кінці рядка.

## Код

Ось рішення:

```raku
sub f($n) {
    $n %% 2 ?? 'Парне' !! 'Непарне'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Знайдіть програму у файлі [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Вивід

```console
$ raku exercises/functions/odd-or-even.raku
Парне
Непарне
Парне
Непарне
```

{% include nav.html %}
