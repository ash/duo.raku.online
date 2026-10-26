---
title: 'Solution: Elemento o lista'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `my $x = $(@a)` imposta il contesto elemento. Quindi tutto l'array va nell'unico scalare `$x`. L'array non si divide nei suoi elementi.

1. Poi `@($x)` imposta il contesto lista. Ora `$x` diventa di nuovo tre elementi. Quindi il ciclo `for` gira tre volte. Alla fine, il contatore è `3`. I due contestualizzatori fanno cose opposte. `$( )` impacchetta una lista in un solo elemento. `@( )` la spacchetta di nuovo.

{% include nav.html %}
