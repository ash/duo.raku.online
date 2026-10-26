---
title: 'Решение: Сумма с сигилом `&`'
translations_gpt: true
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. У остроконечного блока два параметра: `-> $a, $b`. Поэтому анонимная подпрограмма принимает два аргумента.

1. У переменной сигил `&`. Поэтому её можно вызвать как `add(2, 3)`. Это работает как обычная подпрограмма с именем. В вызове сигил писать не нужно. Результат — `5`.

{% include nav.html %}
