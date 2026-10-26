---
title: 'Solution: Незадължителна степен'
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `?` след `$exp` го прави незадължителен. Затова можете да извикате `power` само с основата.

1. Ако пропуснете `$exp`, той е недефиниран. Тогава `//` дава стойността `2`. Затова `power(5)` повдига основата на квадрат и получава `25`. Сега вижте `power(5, 3)`. Тук степента е дадена. Затова кодът я използва и получава `125`.

{% include nav.html %}
