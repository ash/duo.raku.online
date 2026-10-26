---
title: 'Solvo: Ero aŭ listo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Vi povas trovi la fontkodon en la dosiero [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Eligo

```
3
```

## Komentoj

1. `my $x = $(@a)` agordas eran kuntekston. Do la tuta tabelo estas pakita en la solan skalaron `$x`. Ĝi ne estas disvastigita.

1. Poste `@($x)` agordas listan kuntekston kaj disvastigas `$x` reen en ĝiajn tri elementojn. Do la buklo `for` ruliĝas tri fojojn, kaj la nombrilo finiĝas je `3`. La du kuntekstigiloj estas ĝuste kontraŭaj: `$( )` pakas liston en unu eron, kaj `@( )` denove malpakas ĝin.

{% include nav.html %}
