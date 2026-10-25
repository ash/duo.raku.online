---
title: Ciclo `loop` a tre istruzioni
---

{% include menu.html %}

L'istruzione `loop` in Raku ha molto in comune con i cicli tradizionali del linguaggio di programmazione C e dei suoi parenti. Prende tre istruzioni: l'inizializzatore, il test e l'istruzione che cambia la variabile del ciclo. Il corpo del ciclo viene eseguito ripetutamente finché il test rimane `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "Il valore attuale del contatore è $c.";
}
```

Qui, `++` è un operatore postfisso che aumenta il suo argomento di 1. Vedremo altri operatori nella seconda parte del corso.

Il programma esegue il corpo del ciclo cinque volte.

```console
$ raku t.raku
Il valore attuale del contatore è 0.
Il valore attuale del contatore è 1.
Il valore attuale del contatore è 2.
Il valore attuale del contatore è 3.
Il valore attuale del contatore è 4.
```

Alcune, o anche tutte, le istruzioni nell'intestazione di `loop` possono essere omesse. Per esempio, ecco lo stesso programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "Il valore attuale del contatore è $c.";
    $c++;
}
```

## * * *

I cicli `loop` sono probabilmente i cicli meno usati in Raku. Puoi trovarli, per esempio, nel codice che uno strumento ha tradotto automaticamente da C a Raku. Ma Raku ha cicli più comodi, come `for`, che vedremo molto presto.

{% include nav.html %}
