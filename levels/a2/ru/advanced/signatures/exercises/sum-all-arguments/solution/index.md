---
title: 'Решение: Сумма всех аргументов'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Поглощающий параметр `*@nums` собирает все аргументы в массив `@nums`. Количество аргументов не важно.

1. Потом мета-оператор редукции `[+]` складывает их все вместе. Результат — `15`.

{% include nav.html %}
