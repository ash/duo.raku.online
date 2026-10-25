---
title: '`put`'
---

{% include menu.html %}

La routine `put` fa lo stesso lavoro di [`print`](../print). Ma di default aggiunge anche una nuova linea alla fine:

1. Chiama il metodo `Str` sui suoi argomenti per convertirli in una stringa.
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

Ecco cosa stampa il programma:

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

`put` aggiunge alcuni caratteri dopo l'output. I caratteri esatti vengono dal metodo `nl-out` del flusso di output. Il suo valore predefinito è `\n`.
%%/tipblock

{% include nav.html %}
