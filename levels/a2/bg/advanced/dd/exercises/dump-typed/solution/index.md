---
title: 'Solution: Изведете типизирана променлива'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my Int $n = 42;
dd $n;
```

🦋 Можете да намерите пълния код във файла [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Резултат

```
Int $n = 42
```

## Коментари

1. Променливата има деклариран тип. Затова `dd` отпечатва типа преди името: `Int $n = 42`.

1. За променлива без тип `dd` отпечатва само `$n = 42`. Отпред няма тип.

{% include nav.html %}
