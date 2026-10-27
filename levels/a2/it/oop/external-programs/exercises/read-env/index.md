---
title: Passate una variabile a un processo figlio
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un file `notes.txt`. Scrivici dentro alcune righe. Metti il nome del file in una variabile d'ambiente `NOTES`. Poi usa `shell` per eseguire `wc -l`. La shell prende il nome del file da `$NOTES`. Così il programma figlio conta le righe e stampa il numero. Un programma figlio è un programma che il tuo programma avvia. Alla fine cancella il file da Raku. Usa `unlink` per questo, non la shell.

## Esempio

Il programma stampa:

```
3
```

Dopo questo, il file `notes.txt` non c'è più.

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
