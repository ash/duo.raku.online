---
title: Dividere e unire
---

{% include menu.html %}

Puoi dividere una stringa in parti in diversi modi. Puoi anche rimettere insieme le parti.

Il metodo `words` divide una stringa in una lista di parole. Gli spazi bianchi, per esempio uno spazio, separano le parole:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Il metodo `split` taglia una stringa dove c'è un separatore. Tu scegli il separatore:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Ecco un caso speciale importante. Puoi dividere con la **stringa vuota** `''`. Allora ottieni i singoli caratteri della stringa. Ma ottieni anche altre due stringhe vuote. Sono proprio all'inizio e proprio alla fine. Così il risultato ha due elementi in più di quelli che ti aspetti:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Vuoi dividere una stringa in caratteri? Chiama il metodo `comb` senza argomenti. Lo fa direttamente. Non ci sono stringhe vuote in più:

```raku
say 'Raku'.comb; # (R a k u)
```

Il metodo `join` fa il contrario. Unisce una lista di valori in una sola stringa. Mette un separatore tra i valori:

```raku
say <a b c>.join('-'); # a-b-c
```

Altri due metodi lavorano con parti di una stringa. Il metodo `substr` ti dà un pezzo di una stringa. Tu gli dai una posizione di inizio. Se vuoi, puoi dargli anche una lunghezza:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

E `trim` toglie gli spazi bianchi alle due estremità di una stringa:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
