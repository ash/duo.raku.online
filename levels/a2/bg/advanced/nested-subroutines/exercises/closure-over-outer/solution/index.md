---
title: 'Solution: Затваряне над външна'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `message` не приема аргументи. Но все пак може да използва `$name`. Вложената подпрограма пази лексикалните променливи на подпрограмата около нея. Затова външната `$name` се вижда вътре в `message`.

1. При извикването `greet('Anna')` стойността на `$name` е `'Anna'`. Затова `message` връща `Hello, Anna!`. Помощникът споделя обхвата на подпрограмата около него. Затова вложеният помощник е нещо повече от скрита функция.

{% include nav.html %}
