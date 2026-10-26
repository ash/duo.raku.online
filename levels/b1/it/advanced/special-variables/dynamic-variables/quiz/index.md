---
title: Quiz — Variabili dinamiche
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` è scritta al livello superiore, proprio accanto a `my $*n = 1`. Ma questo posto non conta. Raku cerca una variabile dinamica attraverso lo *stack delle chiamate*. Il posto dove si trova il codice non è importante. Qui `show` viene chiamata da `run`, che ha dichiarato di nuovo `$*n` come `2`. Quindi questo è il valore in uso, e il programma stampa `2`.

</div>

{% include nav.html %}
