---
title: 'Розв''язання: Замикання на зовнішню'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

🦋 Вихідний код можна знайти у файлі [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Вивід

```
Hello, Anna!
```

## Коментарі

1. `message` не приймає аргументів, але все одно може використовувати `$name`. Вкладена підпрограма захоплює лексичні змінні тієї підпрограми, яка її містить. Тож зовнішня `$name` перебуває в області видимості.

1. Коли виконується `greet('Anna')`, `$name` дорівнює `'Anna'`. Тож `message` повертає `Hello, Anna!`. Вкладені помічники мають спільну область видимості з кодом навколо них. Це робить їх чимось більшим, ніж просто приховані функції.

{% include nav.html %}
