---
title: 'Решение: Замыкание на внешнюю переменную'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `message` не принимает аргументов. Но `message` всё равно может использовать `$name`. Вложенная подпрограмма держит лексические переменные подпрограммы вокруг неё. Поэтому внешняя `$name` видна внутри `message`.

1. Во время вызова `greet('Anna')` значение `$name` равно `'Anna'`. Поэтому `message` возвращает `Hello, Anna!`. У помощника общая область видимости с подпрограммой вокруг него. Поэтому вложенный помощник — больше, чем просто скрытая функция.

{% include nav.html %}
