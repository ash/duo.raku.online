---
title: Dispatch multiplo
translations_gpt:
---

{% include menu.html %}

Nella parte Essenziali hai incontrato le [_multi-funzioni_](/it/essentials/more-on-functions/multi-functions). Sono diverse subroutine con lo stesso nome. Raku sceglie quella giusta guardando i tipi degli argomenti. Questo si chiama _multiple dispatch_.

Finora Raku ha scelto in base al _tipo_ degli argomenti. Una clausola `where` ti permette di andare oltre e di scegliere anche in base al _valore_. La scrivi dopo un parametro, e contiene una condizione. L'argomento deve rispettare questa condizione, altrimenti quel candidato non viene scelto:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Ogni chiamata esegue il candidato che ha una condizione vera per il valore dato:

```
-5 is negative
0 is zero
7 is positive
```

Se guardi solo i tipi, tutti e tre i candidati hanno la stessa firma: un solo `Int`. Quindi senza le clausole `where` sarebbero in conflitto. Le condizioni li rendono diversi l'uno dall'altro.

## Un caso base per la ricorsione

`where` si usa spesso per il punto di arresto di una ricorsione. Questo punto ha un suo candidato. Ecco di nuovo il fattoriale, ora diviso in due multi-sub:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Il primo candidato gestisce il caso base, quando `$n` vale `1` o meno. Restituisce semplicemente `1`. Ogni altro valore va al secondo candidato. Questo chiama di nuovo `fact` con un numero più piccolo. Dentro la funzione non c'è nessun `if`. Il dispatcher sceglie tra il caso base e il passo ricorsivo.

{% include nav.html %}
