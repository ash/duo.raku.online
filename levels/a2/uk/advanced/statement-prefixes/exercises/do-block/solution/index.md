---
title: 'Розв''язання: Значення блоку do'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Вихідний код можна знайти у файлі [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Вивід

```
big
```

## Коментарі

1. Простий `if` — це оператор. Він не має значення, яке можна використати. Префікс `do` робить увесь `if`/`else` виразом.

1. `7 > 5` — це істина. Тож значення виразу — `'big'`. Програма присвоює його змінній `$label`. Той самий прийом працює з `do given` і `do for`.

1. Дужки `{ }` треба писати обов'язково. У Raku `if` завжди потребує блоку. Тож гілки не можна скоротити, як-от `if 7 > 5 'big' else 'small'`. Цей код не компілюється. Помилка — *Missing block*.

{% include nav.html %}
