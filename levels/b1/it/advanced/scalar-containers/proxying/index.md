---
title: Proxying delle chiamate di metodo
translations_gpt:
---

{% include menu.html %}

In realtà, un contenitore scalare è un oggetto del tipo `Scalar`. Nella maggior parte dei casi, quando usate uno scalare, non notate nemmeno il contenitore. Non avete bisogno di pensarci. Potete immaginare di lavorare direttamente con i valori al suo interno.

Questo funziona perché un contenitore scalare passa le chiamate ai metodi al suo valore. Per esempio, dopo `my $lang = 'Raku'`, potete chiamare il metodo `.chars` sulla variabile:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Il programma stampa `4`, il numero di caratteri nella stringa `'Raku'`. Ora chiamate `.chars` direttamente sul valore stringa, non sulla variabile contenitore. Il risultato è esattamente lo stesso:

```raku
say 'Raku'.chars; # 4
```

In altre parole, il contenitore passa in silenzio la chiamata `.chars` alla stringa che contiene. Poi vi restituisce il risultato.

{% include nav.html %}
