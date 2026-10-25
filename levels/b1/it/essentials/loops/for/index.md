---
title: Cicli `for`
---

{% include menu.html %}

Il ciclo `for` è uno strumento potente per scorrere più elementi, uno alla volta. Per esempio, prendiamo un intervallo:

```raku
for 1..5 -> $n {
    say $n;
}
```

In questo programma, la variabile `$n` prende il valore successivo dell'intervallo a ogni iterazione. Nota che non è necessario dichiarare la variabile con `my`. Il blocco di codice si ripete tante volte quanti sono gli elementi nella fonte di dati. Quindi, il programma stampa i numeri riga per riga:

```console
$ raku t.raku 
1
2
3
4
5
```

Il programma scorre tutti i valori che l'[intervallo](/it/essentials/ranges) `1..5` produce. Questi sono `1`, `2`, `3`, `4` e `5`.

## Prendere più di un valore

Una caratteristica interessante di Raku è che puoi prendere più di un elemento in una singola iterazione. Il seguente programma stampa due numeri ogni volta che il ciclo viene eseguito:

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
