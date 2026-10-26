---
title: 'Solution: Стойността на do блок'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Изходният код на тази програма можете да намерите във файла [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Изход

```
big
```

## Коментари

1. Обикновеният `if` е оператор. Той няма стойност, която можете да използвате. Префиксът `do` прави цялата конструкция `if`/`else` израз.

1. `7 > 5` е вярно. Затова стойността на израза е `'big'`. Програмата я присвоява на `$label`. Същият трик работи с `do given` и `do for`.

1. Трябва да пишете фигурните скоби `{ }`. В Raku `if` винаги иска блок. Затова не можете да съкратите клоновете така: `if 7 > 5 'big' else 'small'`. Този код не се компилира. Грешката е *Missing block*.

{% include nav.html %}
