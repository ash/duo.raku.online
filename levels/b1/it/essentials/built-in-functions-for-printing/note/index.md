---
title: '`note`'
---

{% include menu.html %}

La routine `note` stampa i suoi argomenti sul flusso di errori standard. A parte questo, funziona proprio come [`say`](../say).

1. Chiama il metodo `gist` sui suoi argomenti.
1. Aggiunge un carattere di nuova riga.
1. Converte il risultato in UTF-8.
1. Lo invia al flusso `STDERR`.

```raku
my $x = 42;
note "Il valore corrente di \$x è $x";
```

Controlla che questo programma non invii il messaggio a `STDOUT`:

```
$ raku t.raku > /dev/null
Il valore corrente di $x è 42
```

Se chiami `note` senza argomenti, stampa il messaggio predefinito, `Noted`.

{% include nav.html %}
