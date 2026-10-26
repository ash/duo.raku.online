---
title: 'Розв''язання: Значення блоку do'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Простий `if` — це оператор, і його значення не можна використати. Префікс `do` перетворює весь `if`/`else` на вираз.

1. `7 > 5` істинне, тож вираз дає `'big'`, і це значення присвоюється змінній `$label`. Той самий прийом працює з `do given` і `do for`.

1. Фігурні дужки `{ }` обов'язкові. У Raku `if` завжди бере блок. Тож гілки не можна скоротити до `if 7 > 5 'big' else 'small'`. Такий код не компілюється з помилкою *Missing block*.

{% include nav.html %}
