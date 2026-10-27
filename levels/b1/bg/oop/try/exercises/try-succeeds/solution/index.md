---
title: 'Решение: Когато нищо не се обърква'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Намерете програмата във файла [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Изход

```
True
42
```

## Коментари

1. Ако блокът `try` се изпълни без изключение, той просто дава стойността на блока.

1. Затова `$r` съдържа `42`, а `$r.defined` дава `True`.

{% include nav.html %}
