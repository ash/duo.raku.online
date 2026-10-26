---
title: 'Розв''язання: Замикання на зовнішню'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `message` не приймає аргументів. Але вона все одно може використовувати `$name`. Вкладена підпрограма тримає лексичні змінні підпрограми навколо неї. Тож зовнішню `$name` видно всередині `message`.

1. Під час виклику `greet('Anna')` змінна `$name` дорівнює `'Anna'`. Тож `message` повертає `Hello, Anna!`. Помічник має спільну область видимості з підпрограмою навколо нього. Тож вкладений помічник — це більше, ніж просто прихована функція.

{% include nav.html %}
