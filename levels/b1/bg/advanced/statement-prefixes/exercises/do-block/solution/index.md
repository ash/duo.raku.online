---
title: 'Solution: Стойността на do блок'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Обикновеният `if` е оператор и не можете да използвате стойността му. Префиксът `do` превръща цялата конструкция `if`/`else` в израз.

1. `7 > 5` е вярно, затова изразът дава `'big'` и тази стойност се присвоява на `$label`. Същият трик работи с `do given` и `do for`.

1. Фигурните скоби `{ }` не може да се пропускат. В Raku `if` винаги приема блок. Затова не можете да съкратите клоновете до `if 7 > 5 'big' else 'small'`. Това не се компилира и дава грешката *Missing block*.

{% include nav.html %}
