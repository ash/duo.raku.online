---
title: Dump delle firme di funzione
translations_gpt:
---

{% include menu.html %}

Puoi chiamare un `dd` da solo, senza argomenti, dentro una subroutine. Allora stampa la firma di quella subroutine. La firma contiene il suo nome e la lista dei parametri, se ne ha. Guarda il seguente esempio con due subroutine:

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

Il programma stampa le firme, non dei valori:

```console
sub f1()
sub f2($x)
```

Questo è utile soprattutto con le multi-funzioni, perché mostra quale variante è stata chiamata davvero:

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

Ogni volta, l'output mostra la variante corrispondente:

```console
sub g()
sub g($x)
```

{% include nav.html %}
