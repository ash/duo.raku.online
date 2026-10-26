---
title: 'Solution: Затваряне над външна'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Изходният код на тази програма можете да намерите във файла [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Изход

```
Hello, Anna!
```

## Коментари

1. `message` не приема аргументи, но въпреки това може да използва `$name`. Вложената подпрограма улавя лексикалните променливи на подпрограмата, която я съдържа. Затова външната `$name` е в обхват.

1. Когато `greet('Anna')` се изпълнява, `$name` е `'Anna'`. Затова `message` връща `Hello, Anna!`. Вложените помощници споделят обхвата около тях. Това ги прави нещо повече от просто скрити функции.

{% include nav.html %}
