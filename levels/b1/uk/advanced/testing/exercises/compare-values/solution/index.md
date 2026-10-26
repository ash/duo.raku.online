---
title: 'Розв''язання: Порівняйте значення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `is` порівнює фактичне значення, `'a'.uc`, з очікуваним значенням, `'A'`.

1. Вони збігаються, тож тест проходить. Якби тест не пройшов, `is` вивів би обидва значення.

{% include nav.html %}
