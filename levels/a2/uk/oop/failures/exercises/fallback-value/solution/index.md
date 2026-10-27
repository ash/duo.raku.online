---
title: 'Розв''язання: Запасне значення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Вихідний код можна знайти у файлі [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Вивід

```
5
default
```

## Коментарі

1. `get(5)` повертає `5`, як зазвичай. Тож `//` залишає це значення.

1. `get(0)` повертає `Failure`. `Failure` — це значення з помилкою всередині. Він невизначений. Тож `//` бере запасне значення, `'default'`. `//` тихо обробляє невизначений `Failure`. Він не кидає винятку.

{% include nav.html %}
