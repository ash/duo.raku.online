---
title: Stringhe
---

{% include menu.html %}

Nella parte Essentials hai imparato [come costruire le stringhe](/it/essentials/strings). Hai visto la concatenazione, l'interpolazione e la lunghezza di una stringa. Le stringhe hanno anche un grande insieme di metodi. Questa sezione raccoglie i più utili. La ricerca con le [espressioni regolari](/it/regexes) è un argomento separato e più ampio. Viene trattata in una sua parte più avanti.

Tre metodi rendono maiuscole o minuscole le lettere di una stringa:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

Il metodo `flip` inverte l'ordine dei caratteri di una stringa:

```raku
say 'Raku'.flip; # ukaR
```

E l'operatore `x` ripete una stringa tutte le volte che chiedi:

```raku
say 'ab' x 3; # ababab
```

I prossimi argomenti mostrano come cercare dentro le stringhe. Mostrano anche come dividere le stringhe in parti e poi riunirle.

{% include nav.html %}
