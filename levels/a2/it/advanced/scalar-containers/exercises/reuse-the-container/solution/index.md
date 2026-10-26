---
title: 'Solution: Tipizzato o non tipizzato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Potete trovare il codice sorgente nel file [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Output

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Commenti

1. `dd` mostra i due contenitori in modi diversi. Per quello senza tipo, stampa solo `$untyped`. Per quello con tipo, aggiunge davanti il tipo dichiarato: `Int $typed`. È proprio questo che cambia con un tipo dichiarato.

1. Anche i valori vuoti sono diversi. Un contenitore senza tipo inizia con `Any`. È il valore indefinito di base. Un contenitore con tipo inizia con il valore indefinito del *suo* tipo. Qui è `Int`.

1. Poi tutte e due le variabili ricevono `42`. Ora i valori sembrano uguali. Ma `$typed` ha ancora il suo tipo. Non accetta un valore che non è un intero. `$untyped` accetta qualsiasi valore.

{% include nav.html %}
