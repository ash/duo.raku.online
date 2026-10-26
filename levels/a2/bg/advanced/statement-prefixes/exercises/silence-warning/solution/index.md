---
title: 'Solution: Заглушете предупреждение'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Изходният код на тази програма можете да намерите във файла [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Изход

```
Hello, !
```

## Коментари

1. Тук неопределената `$name` влиза в низа. Обикновено това дава предупреждение: „use of uninitialized value“. Но изразът е вътре в `quietly`. Затова предупреждението е скрито. Програмата отпечатва само поздрава.

1. Както `do`, `quietly` връща стойността на своя блок. Затова програмата записва новия низ в `$greeting`. Името липсва, затова в низа има празно място.

1. `quietly` само скрива предупреждението. Стойността все още е неопределена. Може би искате да се *справите* с липсващата стойност. Тогава дайте стойност по подразбиране с оператора за определеност `//`. `$name // 'friend'` дава `'friend'`, когато `$name` е неопределена. Затова `"Hello, " ~ ($name // 'friend') ~ "!"` отпечатва `Hello, friend!`. Няма никакво предупреждение.

{% include nav.html %}
