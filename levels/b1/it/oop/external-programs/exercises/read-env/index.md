---
title: Passate una variabile a un processo figlio
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un file `notes.txt` e scrivici dentro alcune righe. Metti il suo nome in una variabile d'ambiente `NOTES`. Poi usa `shell` per eseguire `wc -l` e prendere il nome del file da `$NOTES`. Il programma figlio allora conta le righe e stampa il numero. Infine cancella il file da Raku con `unlink`, non attraverso la shell.

## Esempio

Il programma stampa:

```
3
```

Inoltre non lascia dietro di sé nessun `notes.txt`.

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
