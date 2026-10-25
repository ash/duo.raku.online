---
title: Ciclo `loop` a tre istruzioni
---

{% include menu.html %}

Raku ha l'istruzione `loop`. Funziona come i cicli in C e in linguaggi simili. Ha tre istruzioni. La prima dà alla variabile del ciclo il valore iniziale. La seconda è un test. La terza cambia la variabile del ciclo. Il ciclo gira finché il test è `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Il valore attuale del contatore è $c.";
}
```

Qui `++` è un operatore. Lo scrivi dopo una variabile. Aggiunge 1 alla variabile. La seconda parte del corso ha altri operatori.

Il corpo del ciclo si ripete cinque volte.

```console
$ raku t.raku
Il valore attuale del contatore è 0.
Il valore attuale del contatore è 1.
Il valore attuale del contatore è 2.
Il valore attuale del contatore è 3.
Il valore attuale del contatore è 4.
```

Puoi togliere alcune delle tre istruzioni di `loop`. Puoi anche toglierle tutte. Per esempio, ecco lo stesso programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Il valore attuale del contatore è $c.";
    $c++;
}
```

## * * *

In Raku, le persone non usano spesso `loop`. A volte uno strumento cambia il codice C in codice Raku. In questo codice puoi vedere `loop`. Raku ha cicli più facili, come `for`. Vediamo `for` tra poco.

{% include nav.html %}
