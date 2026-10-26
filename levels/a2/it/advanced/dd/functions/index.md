---
title: Dump delle firme di funzione
translations_gpt:
---

{% include menu.html %}

A volte chiami `dd` senza argomenti dentro una subroutine. Allora `dd` stampa la firma della subroutine. La firma contiene il suo nome e i suoi parametri, se ne ha. Guarda questo esempio con due subroutine:

```raku
sub f1 {
    dd
}

f1();

sub f2($x) {
    dd
}

f2(42);
```

Il programma stampa le firme. Non stampa nessun valore:

```console
sub f1()
sub f2($x)
```

Questo è molto utile con le multi-funzioni. Sono più funzioni con lo stesso nome. Qui `dd` ti dice quale variante il programma chiama davvero:

```raku
multi sub g {
    dd
}

multi sub g($x) {
    dd
}

g();
g(42);
```

Ogni volta, l'output indica la variante giusta:

```console
sub g()
sub g($x)
```

{% include nav.html %}
