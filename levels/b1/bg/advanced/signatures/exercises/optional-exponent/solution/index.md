---
title: 'Solution: Незадължителна степен'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Можете да намерите пълния код във файла [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Резултат

```
25
125
```

## Коментари

1. `?` след `$exp` прави параметъра незадължителен. Затова можете да извикате `power` само с основата.

1. Когато `$exp` е пропуснат, той е недефиниран, и `//` дава резервната стойност `2`. Затова `power(5)` повдига основата на квадрат и получава `25`. Със степен, както в `power(5, 3)`, се използва тази стойност. Резултатът е `125`.

{% include nav.html %}
