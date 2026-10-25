---
title: Variabili locali
---

{% include menu.html %}

Dichiariamo una variabile nello scope globale. Che cosa succede se la dichiariamo anche localmente nel blocco?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Ora nel programma ci sono due variabili separate. Tutte e due si chiamano `$x`. Nello scope globale, `$x` indica sempre la variabile globale. Ma dentro il blocco, `$x` è una variabile diversa, locale. Il programma stampa due valori diversi:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
