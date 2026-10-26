---
title: 'Решение: Замыкание на внешнюю переменную'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Исходный код можно найти в файле [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Вывод

```
Hello, Anna!
```

## Комментарии

1. `message` не принимает аргументов, но всё равно может использовать `$name`. Вложенная подпрограмма захватывает лексические переменные той подпрограммы, в которой находится. Поэтому внешняя `$name` находится в области видимости.

1. Когда выполняется `greet('Anna')`, `$name` равно `'Anna'`. Поэтому `message` возвращает `Hello, Anna!`. Вложенные помощники разделяют окружающую их область видимости. Это делает их чем-то большим, чем просто скрытые функции.

{% include nav.html %}
