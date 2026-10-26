---
title: 'Розв''язання: Підрахунок у мультимножині'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Вихідний код можна знайти у файлі [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Вивід

```
2
6
```

## Коментарі

1. `'the cat sat on the mat'.words` дає шість слів. `bag` рахує кожне слово. Індекс `<the>` повертає, скільки разів мультимножина бачила `the`. Відповідь — два.

1. Метод `total` додає всі лічильники. Ця сума — кількість слів у мультимножині: `6`.

{% include nav.html %}
