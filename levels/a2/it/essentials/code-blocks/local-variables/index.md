---
title: Variabili locali
---

{% include menu.html %}

Ora crei una variabile nello scope globale. La crei anche localmente, dentro il blocco. Che cosa succede allora?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Ora nel programma ci sono due variabili. Hanno lo stesso nome. Ma sono variabili diverse. Nello scope globale, ogni `$x` è la variabile globale. Dentro il blocco, `$x` è una variabile locale. Non è il `$x` globale. Il programma stampa due valori diversi:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
