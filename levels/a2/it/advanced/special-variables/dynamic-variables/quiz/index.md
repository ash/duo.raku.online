---
title: Quiz — Variabili dinamiche
---

{% include menu.html %}

Cosa stampa questo programma?

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

`show` è al livello superiore. È proprio accanto a `my $*n = 1`. Ma questo posto non conta. Raku cerca una variabile dinamica nello *stack delle chiamate*. Non guarda dove si trova il codice. Qui `run` chiama `show`. E `run` dichiara di nuovo `$*n` come `2`. Quindi è questo il valore in uso, e il programma stampa `2`.

</div>

{% include nav.html %}
