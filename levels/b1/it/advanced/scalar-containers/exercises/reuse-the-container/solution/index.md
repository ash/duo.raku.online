---
title: 'Solution: Tipizzato o non tipizzato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

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

1. `dd` descrive i due contenitori in modo diverso. Per quello non tipizzato, stampa solo `$untyped`. Per quello tipizzato, mette davanti il tipo dichiarato: `Int $typed`. Questo prefisso è proprio ciò che cambia con un tipo dichiarato.

1. Anche i valori vuoti sono diversi. Un contenitore non tipizzato inizia con il semplice valore indefinito `Any`. Ma un contenitore tipizzato inizia con il valore indefinito del *suo* tipo, `Int`.

1. Dopo che assegnate `42` a tutte e due, i valori sembrano uguali. Ma `$typed` ha ancora il suo tipo, quindi non accetterebbe un valore non intero. `$untyped`, invece, accetta qualsiasi cosa.

{% include nav.html %}
