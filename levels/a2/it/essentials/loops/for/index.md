---
title: Cicli `for`
---

{% include menu.html %}

Il ciclo `for` è molto utile. Scorre molti elementi, uno alla volta. Per esempio, prendi un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` prende ogni volta il prossimo valore dell'intervallo. Non devi scrivere `my` prima di `$n`. Il blocco gira una volta per ogni valore dell'intervallo. Così il programma stampa i numeri, uno per riga:

```console
$ raku t.raku 
1
2
3
4
5
```

Il programma scorre tutti i valori dell'[intervallo](/it/essentials/ranges) `1..5`. Questi valori sono `1`, `2`, `3`, `4` e `5`.

## Più di un valore alla volta

In Raku, un ciclo può prendere due o più elementi ogni volta. Questo programma stampa due numeri alla volta:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Ecco cosa stampa il programma:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
