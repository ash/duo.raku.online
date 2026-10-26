---
title: 'Решение: Подсчёт в мультимножестве'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Исходный код можно найти в файле [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Вывод

```
2
6
```

## Комментарии

1. `'the cat sat on the mat'.words` даёт шесть слов, а `bag` считает каждое из них. Обращение по индексу `<the>` возвращает, сколько раз встретилось `the`, то есть два раза.

1. Метод `total` складывает все счётчики. Это столько же, сколько слов попало в мультимножество, — `6`.

{% include nav.html %}
