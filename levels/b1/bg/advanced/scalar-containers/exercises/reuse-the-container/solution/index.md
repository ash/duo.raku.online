---
title: 'Solution: Типизиран или нетипизиран'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение на задачата.

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

1. `dd` описва двата контейнера по различен начин. За нетипизирания отпечатва само `$untyped`. За типизирания поставя декларирания тип отпред: `Int $typed`. Този префикс е точно това, което декларираният тип променя.

1. Празните стойности също са различни. Нетипизираният контейнер започва с простата неопределена стойност `Any`. А типизираният контейнер започва с неопределената стойност на *своя* тип, `Int`.

1. След като присвоите `42` и на двете, стойностите изглеждат еднакво. Но `$typed` все още има своя тип, затова не би приела стойност, която не е цяло число. `$untyped`, от друга страна, приема всичко.

{% include nav.html %}
