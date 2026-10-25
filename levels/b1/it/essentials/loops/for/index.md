---
title: Cicli `for`
---

{% include menu.html %}

Il ciclo `for` è uno strumento potente. Scorre molti elementi, uno dopo l'altro. Per esempio, prendiamo un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Ogni volta che il ciclo gira, la variabile `$n` prende il valore successivo dell'intervallo. Nota che non devi dichiarare la variabile con `my`. Il blocco di codice viene eseguito una volta per ogni elemento della fonte di dati. Quindi il programma stampa i numeri uno per riga:

```console
$ raku t.raku 
1
2
3
4
5
```

Il programma scorre tutti i valori che dà l'[intervallo](/it/essentials/ranges) `1..5`. Questi sono `1`, `2`, `3`, `4` e `5`.

## Prendere più di un valore

Ecco una caratteristica interessante di Raku. Un ciclo può prendere più di un elemento alla volta. Il prossimo programma stampa due numeri ogni volta che il ciclo gira:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Questo è l'output del programma:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
