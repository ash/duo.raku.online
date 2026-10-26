---
title: Variabili dinamiche
---

{% include menu.html %}

Una variabile _dinamica_ ha il twigil `*`. Una variabile normale, lessicale, è visibile solo nel suo blocco. La dichiari in questo blocco. Una variabile dinamica è diversa. Raku la cerca **nello stack delle chiamate**. Guarda il codice che ha chiamato il codice attuale. Poi va ancora un passo indietro, e così via. Non importa dove è scritto il codice attuale.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

La subroutine `greet` non dichiara `$*greeting`. Non la riceve come argomento. Ma la può vedere lo stesso. La variabile è dinamica. E la variabile è visibile dove il programma chiama `greet`.

Questo esempio funziona anche con una semplice variabile scalare globale `$greeting`. Il prossimo esempio mostra cosa hanno di speciale le variabili dinamiche.

Raku cerca la variabile nello stack delle chiamate. Quindi una dichiarazione più vicina **sovrascrive** una più lontana. Questo vuol dire che Raku usa quella più vicina. Questo dura finché il suo blocco gira:

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

La stessa `show` stampa `outer` la prima volta. La seconda volta, stampa `inner`. Questa volta, il programma chiama `show` dall'interno del blocco. Questo blocco dichiara di nuovo `$*level`. Questo è lo _scope dinamico_. Le variabili predefinite di Raku `$*OUT`, `$*IN` e `$*ERR` funzionano così. Per esempio, puoi dichiarare di nuovo `$*OUT` in un blocco. Allora l'output va in un posto nuovo per un po'. Ogni routine che chiami nel blocco vede il nuovo valore. Le variabili dinamiche sono ottime per le informazioni che servono al codice chiamato. Non devi passare queste informazioni come argomento.

{% include nav.html %}
