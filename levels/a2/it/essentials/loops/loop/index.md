---
title: Ciclo `loop` a tre istruzioni
---

{% include menu.html %}

L'istruzione `loop` in Raku è come i cicli classici del linguaggio C e di linguaggi simili. Prende tre istruzioni. La prima imposta il valore iniziale. La seconda è il test. La terza cambia la variabile del ciclo. Il corpo del ciclo si ripete finché il test è `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Il valore attuale del contatore è $c.";
}
```

Qui `++` è un operatore che va dopo una variabile. Aggiunge 1 alla variabile. Imparerai altri operatori nella seconda parte del corso.

Il programma esegue il corpo del ciclo cinque volte.

```console
$ raku t.raku
Il valore attuale del contatore è 0.
Il valore attuale del contatore è 1.
Il valore attuale del contatore è 2.
Il valore attuale del contatore è 3.
Il valore attuale del contatore è 4.
```

Puoi togliere alcune o anche tutte le istruzioni nell'intestazione di `loop`. Per esempio, ecco lo stesso programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Il valore attuale del contatore è $c.";
    $c++;
}
```

## * * *

In Raku le persone non usano molto spesso `loop`. Lo puoi vedere, per esempio, in programmi che uno strumento ha tradotto da C a Raku. Raku ha cicli più facili, come `for`. Vediamo `for` molto presto.

{% include nav.html %}
