---
title: 'Решение: Сумма с сигилом `&`'
translations_gpt: true
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Исходный код можно найти в файле [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Вывод

```
5
```

## Комментарии

1. У остроконечного блока два параметра, `-> $a, $b`. Именно поэтому анонимной подпрограмме нужны два аргумента.

1. Переменная объявлена с сигилом `&`. Поэтому её можно вызвать как `add(2, 3)`, точно так же, как именованную подпрограмму. Сигил в вызове не нужен. Это даёт `5`.

{% include nav.html %}
