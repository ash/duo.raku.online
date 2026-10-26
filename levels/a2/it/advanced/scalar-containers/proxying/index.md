---
title: Proxying delle chiamate di metodo
translations_gpt:
---

{% include menu.html %}

Un contenitore scalare è in realtà un oggetto del tipo `Scalar`. Di solito non vedete per niente questo contenitore. Non avete bisogno di pensarci. Potete immaginare di lavorare direttamente con i valori al suo interno.

Perché funziona? Un contenitore scalare passa le chiamate ai metodi al valore che contiene. Per esempio, prendete l'assegnazione `my $lang = 'Raku'`. Dopo questa, potete chiamare il metodo `.chars` sulla variabile:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Il programma stampa `4`. È il numero di caratteri nella stringa `'Raku'`. Ora chiamate `.chars` sul valore stringa stesso, non sulla variabile. Il risultato è proprio lo stesso:

```raku
say 'Raku'.chars; # 4
```

Così il contenitore passa in silenzio la chiamata `.chars` alla sua stringa. Poi vi restituisce il risultato.

{% include nav.html %}
