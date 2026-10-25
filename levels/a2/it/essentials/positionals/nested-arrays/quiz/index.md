---
title: Quiz — Array annidati
---

{% include menu.html %}

Un array di array contiene delle temperature. Sono di quattro giorni. Ci sono tre misure per ogni giorno:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Elementi singoli

Cosa stampa ognuna di queste righe di codice?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Confronti

Ogni confronto dà un risultato Booleano, `True` o `False`. Scegli il risultato giusto.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` è&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` è&nbsp; (: False, True :)

## Lunghezze

Ecco alcune chiamate del metodo `elems`. Quale valore restituisce ogni chiamata?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
