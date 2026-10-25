---
title: '`note`'
---

{% include menu.html %}

La routine `note` stampa i suoi argomenti sul flusso di errori standard. Per tutto il resto, `note` è come [`say`](../say).

1. Chiama il metodo `gist` sui suoi argomenti.
1. Aggiunge un carattere di nuova riga.
1. Converte il risultato in UTF-8.
1. Lo invia al flusso `STDERR`.

```raku
my $x = 42;
note "Il valore corrente di \$x è $x";
```

Questo programma non invia il messaggio a `STDOUT`. Controllalo:

```
$ raku t.raku > /dev/null
Il valore corrente di $x è 42
```

Puoi chiamare `note` senza argomenti. Allora stampa il messaggio predefinito, `Noted`.

{% include nav.html %}
