---
title: 'Solvo: Ero aŭ listo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `my $x = $(@a)` agordas eran kuntekston. Do la tuta tabelo iras en la unu skalaron `$x`. La tabelo ne disiĝas en siajn elementojn.

1. Poste `@($x)` agordas listan kuntekston. Nun `$x` denove fariĝas tri elementoj. Do la buklo `for` ruliĝas tri fojojn. Fine la nombrilo estas `3`. La du kuntekstigiloj faras kontraŭajn aferojn. `$( )` pakas liston en unu eron. `@( )` denove malpakas ĝin.

{% include nav.html %}
