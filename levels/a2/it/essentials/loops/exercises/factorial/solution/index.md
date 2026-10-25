---
title: 'Solution: Fattoriale'
---

{% include menu.html %}

Il fattoriale di `N` è la moltiplicazione di tutti i numeri interi da 1 a `N`. Per esempio, il fattoriale di 4 è 1 * 2 * 3 * 4 = 24.

## Codice

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trova il programma nel file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Esegui il programma alcune volte con diversi valori di `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commenti

Questo programma usa l'operatore `*=`. È un modo breve per moltiplicare e assegnare: `$x *= $y` significa la stessa cosa di `$x = $x * $y`.

Puoi anche usare un ciclo ‘completo’ invece della forma postfissa:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Per saperne di più

Torniamo a questo compito diverse volte nel corso. In questa parte del corso lo risolviamo anche con la ricorsione.

Nella seconda parte del corso imparerai gli operatori di riduzione. Con questi operatori la soluzione è molto facile. Imparerai anche a creare un tuo operatore `!`. Poi puoi scrivere `$n!` per ottenere un fattoriale. Più avanti vedremo un'altra soluzione interessante con la clausola `where`.

{% include nav.html %}
