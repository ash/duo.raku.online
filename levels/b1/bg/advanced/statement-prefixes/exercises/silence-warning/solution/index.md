---
title: 'Solution: Заглушете предупреждение'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Когато сложите неопределената `$name` в низа, обикновено получавате предупреждение „use of uninitialized value“. С `quietly` около израза предупреждението е скрито, затова се отпечатва само поздравът.

1. Както `do`, `quietly` връща стойността на своя блок. Затова готовият низ се записва в `$greeting`. Липсващото име оставя празно място в него.

1. `quietly` само скрива предупреждението, а стойността все още е неопределена. Ако вместо това искате да се *справите* с липсващата стойност, дайте стойност по подразбиране. Използвайте за това оператора за определеност `//`. `$name // 'friend'` дава `'friend'`, когато `$name` е неопределена. Затова `"Hello, " ~ ($name // 'friend') ~ "!"` отпечатва `Hello, friend!` без никакво предупреждение.

{% include nav.html %}
