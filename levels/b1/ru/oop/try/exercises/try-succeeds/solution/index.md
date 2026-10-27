---
title: 'Решение: Когда всё идёт хорошо'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Исходный код можно найти в файле [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Вывод

```
True
42
```

## Комментарии

1. Если блок `try` выполняется без исключения, он просто даёт значение блока.

1. Поэтому `$r` содержит `42`, а `$r.defined` даёт `True`.

{% include nav.html %}
