---
title: Tipi di dati e contenitori scalari
translations_gpt:
---

{% include menu.html %}

Ecco un programma che usa una sola variabile per tipi diversi di dati. Usiamo `dd` per vedere cosa c'è nel contenitore a ogni passo. Questo esempio mostra solo l'idea. Non consigliamo questo stile di programmazione.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Ogni chiamata a `dd` mostra cosa c'è nella variabile `$value` in quel momento:

```
$value = Any
$value = 42
$value = "forty-two"
```

All'inizio la variabile è vuota, e `dd` mostra il suo valore come `Any`. È il valore base indefinito con cui inizia ogni contenitore non tipizzato. Dopo le assegnazioni, `dd` mostra l'intero e poi la stringa.

Notate che qui `dd` non stampa un tipo prima del nome. Un contenitore non tipizzato non è legato a nessun tipo, quindi viene mostrato solo il valore. Il prossimo argomento mostra che [un contenitore con un tipo dichiarato](/it/advanced/scalar-containers/type-constraints) si comporta in modo diverso.

{% include nav.html %}
