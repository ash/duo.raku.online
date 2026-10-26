---
title: 'Solution: Dump della struttura dati'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Puoi trovare il codice sorgente nel file [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Output

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Commenti

1. `dd @data` stampa il contenuto dell'array. Lo stampa in una forma simile al codice. Questo output va sul flusso di errore standard.

1. Il metodo `.raku` restituisce la stessa forma come stringa. Il programma mette questa stringa in un messaggio normale. Per farlo, esegue del codice dentro la stringa. Poi `say` stampa il messaggio sullo standard output.

1. Qui le due righe sembrano uguali. Ma vanno su flussi di output diversi. La prima riga viene da `dd` e va sullo standard error. La seconda riga viene da `say` e va sullo standard output. Confronta queste due esecuzioni:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
