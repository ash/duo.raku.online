---
title: 'Solution: Fattoriale'
---

{% include menu.html %}

Il fattoriale di `N` è il prodotto di tutti i numeri interi da 1 fino a `N` incluso. Per esempio, il fattoriale di 4 è 1 * 2 * 3 * 4 = 24.

## Codice

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trova il programma nel file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Esegui il programma alcune volte e prova diversi valori di `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commenti

Questo programma usa l'operatore `*=`, una forma breve per la moltiplicazione con assegnazione: `$x *= $y` è uguale a `$x = $x * $y`.

Puoi anche usare un ciclo ‘completo’ invece della forma postfissa:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Più su questo argomento

Torneremo su questo compito diverse volte. In questa parte del corso, lo risolveremo anche in modo ricorsivo.

Nella seconda parte del corso, impareremo a conoscere i cosiddetti operatori di riduzione, che rendono la soluzione molto semplice. Vedremo anche come definire un tuo operatore `!`, così potrai scrivere `$n!` per calcolare un fattoriale. Infine, vedremo un'altra soluzione interessante quando parleremo della clausola `where`.

{% include nav.html %}
