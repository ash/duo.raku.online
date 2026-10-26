---
title: 'Розв''язання: Підрахунок у мультимножині'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `'the cat sat on the mat'.words` дає шість слів, а `bag` рахує кожне з них. Індекс `<the>` повертає, скільки разів трапилося `the`, тобто двічі.

1. Метод `total` додає всі лічильники. Це те саме, що кількість слів, покладених у мультимножину, — `6`.

{% include nav.html %}
