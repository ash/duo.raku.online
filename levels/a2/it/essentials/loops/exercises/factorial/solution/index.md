---
title: 'Solution: Fattoriale'
---

{% include menu.html %}

Per avere il fattoriale di `N`, moltiplica tutti i numeri da 1 a `N`. Per esempio, il fattoriale di 4 è 1 * 2 * 3 * 4 = 24.

## Codice

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Trova il programma nel file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Esegui il programma alcune volte. Prova valori diversi di `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Commenti

Il programma usa l'operatore `*=`. Moltiplica e salva il risultato nella variabile. Quindi `$x *= $y` è uguale a `$x = $x * $y`.

Puoi anche scrivere un ciclo ‘completo’, con `for` prima del blocco:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Per saperne di più

Questo compito torna diverse volte nel corso. In questa parte lo risolviamo anche in un altro modo. Usiamo una funzione che chiama se stessa.

Nella seconda parte imparerai gli operatori di riduzione. Con questi, la soluzione è molto facile. Imparerai anche a creare un tuo operatore, `!`. Poi puoi scrivere `$n!` per un fattoriale. Più avanti vedrai un'altra bella soluzione con `where`.

{% include nav.html %}
