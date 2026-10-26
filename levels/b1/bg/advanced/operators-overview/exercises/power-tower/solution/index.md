---
title: 'Solution: Кула от степени'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
say 2 ** 2 ** 3;
```

🦋 Можете да намерите пълния код във файла [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Резултат

```
256
```

## Коментари

1. Операторът `**` е дясно-асоциативен, затова изразът се групира като `2 ** (2 ** 3)`.

1. Това е `2 ** 8`, което е `256`. Това не е `(2 ** 2) ** 3`, което би дало `64`.

{% include nav.html %}
