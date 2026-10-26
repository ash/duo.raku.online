---
title: Un heredoc
---

{% include menu.html %}

## Problema

Scrivi una lettera che conferma un ordine. Usa un heredoc che *interpola*. Costruisci la lettera da alcune variabili. Le variabili sono un cliente `$name`, un articolo `$item`, un prezzo `$price` e una quantità `$count`. Il prezzo è per un solo articolo. L'heredoc inserisce i valori delle variabili. Trova *anche* il totale. Per farlo, ha un blocco `{ … }` dentro il testo (`$count * $price`).

Indenta il corpo dell'heredoc. Deve essere allineato al codice intorno. Metti il terminatore di chiusura con la stessa indentazione del testo. Così l'output non ha indentazione. Stampa il risultato.

## Esempio

Prendi `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` e `$count = 3`. Allora il programma stampa questo. Non ci sono spazi all'inizio delle righe:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
