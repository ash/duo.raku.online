---
title: 'Решение: Формула върху класа'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Намерете програмата във файла [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Изход

```
314
```

## Коментари

1. Методът не използва нито един атрибут, а само параметъра си `$r`. Затова можете да го извикате върху самия клас, без първо да създавате обект.

1. `Geometry.circle-area(10)` извиква метода върху обекта на типа и му подава `10`. Резултатът е `π * 10 * 10`, което след закръгляване е `314`.

{% include nav.html %}
