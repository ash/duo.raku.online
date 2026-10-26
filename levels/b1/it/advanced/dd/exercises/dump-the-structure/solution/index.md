---
title: 'Solution: Dump della struttura dati'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

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

1. `dd @data` stampa il contenuto dell'array in una forma simile al codice. Questo output va sul flusso di errore standard.

1. Il metodo `.raku` restituisce la stessa rappresentazione come stringa. Questa stringa viene poi inserita in un messaggio normale, con del codice tra parentesi graffe. Poi `say` stampa il messaggio sullo standard output.

1. Qui le due righe sembrano uguali, ma passano per flussi di output diversi. La prima viene da `dd` e va sullo standard error. La seconda viene da `say` e va sullo standard output. Confronta quanto segue:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
