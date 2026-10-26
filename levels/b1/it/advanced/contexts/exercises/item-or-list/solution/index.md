---
title: 'Solution: Elemento o lista'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Puoi trovare il codice sorgente nel file [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Output

```
3
```

## Commenti

1. `my $x = $(@a)` imposta il contesto elemento. Quindi l'intero array viene impacchettato nel singolo scalare `$x`. Non viene espanso.

1. Poi `@($x)` imposta il contesto lista ed espande di nuovo `$x` nei suoi tre elementi. Quindi il ciclo `for` gira tre volte, e alla fine il contatore vale `3`. I due contestualizzatori sono esattamente opposti: `$( )` impacchetta una lista in un solo elemento, e `@( )` la spacchetta di nuovo.

{% include nav.html %}
