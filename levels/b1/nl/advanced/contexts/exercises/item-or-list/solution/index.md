---
title: 'Solution: Item of lijst'
translations_gpt: The solution of 'Item or list'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Je kunt de broncode vinden in het bestand [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Uitvoer

```
3
```

## Opmerkingen

1. `my $x = $(@a)` stelt itemcontext in. Dus wordt de hele array verpakt in de ene scalar `$x`. Hij wordt niet uitgespreid.

1. Dan stelt `@($x)` lijstcontext in en spreidt `$x` weer uit in zijn drie elementen. Dus loopt de `for`-lus drie keer, en de teller eindigt op `3`. De twee contextomzetters zijn precies elkaars tegenovergestelde: `$( )` verpakt een lijst tot één item, en `@( )` pakt hem weer uit.

{% include nav.html %}
