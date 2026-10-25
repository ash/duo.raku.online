---
title: Ambito lessicale
---

{% include menu.html %}

Un blocco di codice crea un ambito lessicale. Che cosa vuol dire? Crei una variabile in un blocco. È visibile dentro questo blocco. Poi il programma esce dal blocco. Dopo, la variabile non è più visibile. Guarda un esempio:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Il programma crea la variabile `$x` nel blocco di codice. Il primo `say $x` è dentro il blocco. Lì la variabile è visibile. Quindi `say` stampa il suo valore. Il secondo `say $x` fallisce. Fuori dal blocco, il nome `$x` non esiste. Dopo la fine del blocco, il programma non lo conosce. Il programma non si compila. Ottieni un errore:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
