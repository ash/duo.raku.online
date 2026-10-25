---
title: Ciclo `loop` a tre istruzioni
---

{% include menu.html %}

L'istruzione `loop` in Raku è molto simile ai cicli tradizionali del C e di linguaggi simili. Prende tre istruzioni. La prima imposta un valore iniziale, e la seconda è il test. La terza cambia la variabile del ciclo. Il corpo del ciclo si ripete più volte finché il test è `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Il valore attuale del contatore è $c.";
}
```

Qui `++` è un operatore postfisso, cioè viene dopo il suo argomento. Aggiunge 1 all'argomento. Ci sono altri operatori nella seconda parte del corso.

Il programma esegue il corpo del ciclo cinque volte.

```console
$ raku t.raku
Il valore attuale del contatore è 0.
Il valore attuale del contatore è 1.
Il valore attuale del contatore è 2.
Il valore attuale del contatore è 3.
Il valore attuale del contatore è 4.
```

Alcune istruzioni nell'intestazione di `loop`, o anche tutte, sono facoltative. Per esempio, ecco lo stesso programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Il valore attuale del contatore è $c.";
    $c++;
}
```

## * * *

I programmatori Raku probabilmente usano `loop` meno di tutti gli altri cicli. Puoi trovarlo, per esempio, nel codice che uno strumento ha convertito da C a Raku. Ma Raku ha cicli più comodi, come `for`. Lo vedremo molto presto.

{% include nav.html %}
