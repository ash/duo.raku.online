---
title: '`put`'
---

{% include menu.html %}

La routine `put` funziona come [`print`](../print). Ma di default aggiunge una nuova linea alla fine:

1. Converte i suoi argomenti in una stringa. Per farlo, chiama il metodo `Str` sugli argomenti.
1. Aggiunge un carattere di nuova linea.
1. Invia la stringa al flusso `STDOUT`.

Alcuni esempi:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Ecco l'output del programma:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Una nuova linea di `put`

Quali caratteri aggiunge `put` dopo l'output? Li prende dal metodo `nl-out` del flusso di output. Il valore predefinito è `\n`.
%%/tipblock

{% include nav.html %}
