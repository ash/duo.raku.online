---
title: 'Розв''язання: Порівняйте значення'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Вихідний код можна знайти у файлі [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Вивід

```
ok 1 - uppercase
1..1
```

## Коментарі

1. `is` порівнює два значення. `'a'.uc` — це значення, яке ви отримуєте. `'A'` — це значення, яке ви очікуєте.

1. Значення однакові, тож тест проходить. Якщо тест не проходить, `is` виводить обидва значення.

{% include nav.html %}
