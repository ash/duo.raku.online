---
title: 'Solution: Типизиран или нетипизиран'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Можете да намерите изходния код във файла [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Изход

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Коментари

1. `dd` показва двата контейнера по различен начин. За нетипизирания тя отпечатва само `$untyped`. За типизирания тя добавя декларирания тип отпред: `Int $typed`. Точно това променя декларираният тип.

1. Празните стойности също са различни. Нетипизираният контейнер започва с `Any`. Това е основната неопределена стойност. Типизираният контейнер започва с неопределената стойност на *своя* тип. Тук това е `Int`.

1. След това двете променливи получават `42`. Сега стойностите изглеждат еднакво. Но `$typed` все още има своя тип. Тя не приема стойност, която не е цяло число. `$untyped` приема всяка стойност.

{% include nav.html %}
