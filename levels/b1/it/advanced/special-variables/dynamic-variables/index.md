---
title: Variabili dinamiche
---

{% include menu.html %}

Una variabile _dinamica_ ha il twigil `*`. Una variabile lessicale è visibile solo nel blocco dove la dichiari. Una variabile dinamica è diversa: Raku la trova cercando **verso l'esterno nello stack delle chiamate**. Cerca nel codice che ha chiamato il codice attuale. Non importa dove quel codice è definito.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subroutine `greet` non dichiara `$*greeting` e non la riceve come argomento. Ma può comunque vederla. Questo perché la variabile è dinamica. Inoltre, `greet` è stata chiamata da un punto dove la variabile è nello scope.

Questo esempio funzionerebbe anche con una semplice variabile scalare globale `$greeting`. Ma il prossimo esempio mostra cosa rende speciali le variabili dinamiche.

La ricerca segue lo stack delle chiamate. Quindi una dichiarazione più vicina **sovrascrive** una più lontana mentre il suo blocco è in esecuzione:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

La stessa `show` stampa `outer` la prima volta. Stampa `inner` quando viene chiamata dall'interno del blocco che ha dichiarato di nuovo `$*level`. Questo è lo _scope dinamico_. Le variabili predefinite di Raku `$*OUT`, `$*IN` e `$*ERR` funzionano allo stesso modo. Puoi reindirizzare l'output per un po' se dichiari di nuovo `$*OUT` in un blocco. Allora ogni routine che chiami dentro il blocco vede il nuovo valore. Le variabili dinamiche sono ottime per passare il contesto al codice chiamato senza un argomento esplicito.

{% include nav.html %}
