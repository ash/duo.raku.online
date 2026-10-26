---
title: Un heredoc
---

{% include menu.html %}

## Problema

Usa un heredoc *interpolante* per costruire una lettera che conferma un ordine. Usa alcune variabili: un cliente `$name`, un articolo `$item`, un prezzo `$price` e una quantità `$count`. Il prezzo è per un solo articolo. L'heredoc deve interpolare le variabili. Deve *anche* calcolare il totale nel testo, con un blocco `{ … }` incorporato (`$count * $price`).

Indenta il corpo dell'heredoc per allinearlo al codice intorno. Allinea il terminatore di chiusura con il testo. Così l'indentazione non appare nell'output. Stampa il risultato.

## Esempio

Prendi `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` e `$count = 3`. Allora il programma stampa quanto segue, senza spazi all'inizio:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
