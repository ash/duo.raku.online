---
title: Dividere e unire
---

{% include menu.html %}

Ci sono diversi modi per dividere una stringa in parti e unirle di nuovo.

Il metodo `words` divide una stringa in una lista di parole dove ci sono spazi bianchi:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Il metodo `split` divide una stringa dove c'è un separatore che scegli tu:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Un caso speciale importante è la divisione con la **stringa vuota** `''`. Divide una stringa nei suoi singoli caratteri. Ma aggiunge anche una stringa vuota proprio all'inizio e proprio alla fine. Così il risultato ha due elementi in più di quanto potresti aspettarti:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Per dividere una stringa in caratteri, puoi chiamare il metodo `comb` senza argomenti. Lo fa direttamente, e non ci sono stringhe vuote in più da togliere:

```raku
say 'Raku'.comb; # (R a k u)
```

Per fare il contrario, usa il metodo `join`. Unisce una lista di valori in una sola stringa e mette un separatore tra di loro:

```raku
say <a b c>.join('-'); # a-b-c
```

Altri due metodi lavorano con parti di una stringa. Il metodo `substr` restituisce un pezzo di una stringa. Gli dai una posizione iniziale e, se vuoi, una lunghezza:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

E `trim` toglie gli spazi bianchi all'inizio e alla fine di una stringa:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
