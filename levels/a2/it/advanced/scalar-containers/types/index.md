---
title: Tipi di dati e contenitori scalari
translations_gpt:
---

{% include menu.html %}

Guardiamo un programma. Usa la stessa variabile per tipi diversi di dati. Usiamo `dd` per vedere i dati a ogni passo. Questo esempio mostra solo come funzionano le cose. Non è un buon modo di scrivere programmi.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Ogni chiamata a `dd` mostra il valore attuale di `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

All'inizio la variabile è vuota. `dd` mostra il suo valore come `Any`. È il valore base indefinito. Ogni contenitore senza tipo inizia con questo valore. Dopo le assegnazioni, `dd` mostra l'intero. Poi mostra la stringa.

Notate che qui `dd` non stampa un tipo prima del nome. Un contenitore senza tipo non ha un tipo fisso. Così `dd` mostra solo il valore. [Un contenitore con un tipo dichiarato](/it/advanced/scalar-containers/type-constraints) funziona in modo diverso. Lo vedrete nel prossimo argomento.

{% include nav.html %}
