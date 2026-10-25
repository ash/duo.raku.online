---
title: 'Solution: Fattoriale'
---

{% include menu.html %}

Il fattoriale di `N` è il prodotto di tutti i numeri interi da 1 a `N`. Per esempio, il fattoriale di 4 è 1 * 2 * 3 * 4 = 24.

## Codice

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trova il programma nel file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Esegui il programma alcune volte con valori diversi di `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commenti

Questo programma usa l'operatore `*=`, che moltiplica e assegna in un solo passo: `$x *= $y` significa la stessa cosa di `$x = $x * $y`.

Invece della forma postfissa, puoi anche usare un ciclo ‘completo’:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Più su questo argomento

Torneremo su questo compito diverse volte. Più avanti in questa parte del corso, lo risolveremo anche con la ricorsione.

Nella seconda parte del corso impareremo gli operatori di riduzione. Questi operatori rendono la soluzione molto semplice. Creeremo anche un nostro operatore `!`, così `$n!` darà il fattoriale. Infine, ci sarà un'altra soluzione interessante quando parleremo della clausola `where`.

{% include nav.html %}
