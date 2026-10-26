---
title: 'Решение: Сумма всех аргументов'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Исходный код можно найти в файле [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Вывод

```
15
```

## Комментарии

1. Поглощающий параметр `*@nums` собирает все аргументы в массив `@nums`. Неважно, сколько их.

1. Затем мета-оператор редукции `[+]` складывает их все и даёт `15`.

{% include nav.html %}
