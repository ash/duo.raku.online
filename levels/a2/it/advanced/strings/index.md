---
title: Stringhe
---

{% include menu.html %}

Nella parte Essentials hai imparato [come costruire le stringhe](/it/essentials/strings). Hai imparato a unire le stringhe e a interpolare. Hai imparato anche a trovare la lunghezza di una stringa. Le stringhe hanno anche molti metodi. Questa sezione mostra i più utili. La ricerca con le [espressioni regolari](/it/regexes) è un argomento separato e più grande. Ha una sua parte più avanti nel corso.

Tre metodi cambiano il tipo di lettere di una stringa. Le lettere possono essere maiuscole o minuscole:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

Il metodo `flip` scrive i caratteri di una stringa al contrario:

```raku
say 'Raku'.flip; # ukaR
```

E l'operatore `x` ripete una stringa più volte. Tu dai il numero di volte:

```raku
say 'ab' x 3; # ababab
```

I prossimi argomenti mostrano come cercare nelle stringhe. Mostrano anche come dividere le stringhe in parti. E mostrano come unire di nuovo le parti.

{% include nav.html %}
