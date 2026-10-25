---
title: Cicli `for`
---

{% include menu.html %}

Il ciclo `for` è uno strumento potente. Scorre molti elementi, uno per uno. Per esempio, prendiamo un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

In questo programma, la variabile `$n` prende ogni volta il valore successivo dell'intervallo. Non devi dichiarare la variabile con `my`. Il programma esegue il blocco di codice una volta per ogni elemento dell'intervallo. Così il programma stampa i numeri, uno per riga:

```console
$ raku t.raku 
1
2
3
4
5
```

Il programma scorre tutti i valori dell'[intervallo](/it/essentials/ranges) `1..5`. Sono `1`, `2`, `3`, `4` e `5`.

## Più di un valore alla volta

In Raku, un ciclo può prendere più di un elemento alla volta. Questo programma stampa due numeri ogni volta:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Ecco l'output del programma:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
