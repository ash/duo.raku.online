---
title: 'Решение: Подсчёт в мультимножестве'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `'the cat sat on the mat'.words` даёт шесть слов. `bag` считает каждое слово. Обращение по индексу `<the>` возвращает, сколько раз мультимножество видело `the`. Ответ — два.

1. Метод `total` складывает все счётчики. Эта сумма — число слов в мультимножестве: `6`.

{% include nav.html %}
