---
title: 'Solution: Item of lijst'
translations_gpt: The solution of 'Item or list'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. `my $x = $(@a)` stelt itemcontext in. Dus gaat de hele array in de ene scalar `$x`. De array valt niet uiteen in zijn elementen.

1. Dan stelt `@($x)` lijstcontext in. Nu wordt `$x` weer drie elementen. Dus loopt de `for`-lus drie keer. Aan het eind is de teller `3`. De twee contextomzetters doen het omgekeerde van elkaar. `$( )` pakt een lijst in tot één item. `@( )` pakt hem weer uit.

{% include nav.html %}
