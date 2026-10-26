---
title: 'Розв''язання: Булева перевірка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my @empty;
say ?@empty;
```

🦋 Вихідний код можна знайти у файлі [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Вивід

```
False
```

## Коментарі

1. Префікс `?` задає булевий контекст.

1. Порожній масив є хибним. Тому `if @array` і працює.

{% include nav.html %}
