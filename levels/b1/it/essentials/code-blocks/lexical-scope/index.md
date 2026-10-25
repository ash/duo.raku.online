---
title: Ambito lessicale
---

{% include menu.html %}

Un blocco di codice crea quello che si chiama ambito lessicale. Se dichiari una variabile in un blocco, è visibile dentro il blocco. Ma non è visibile dopo che il programma esce dal blocco. Ecco un esempio:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

La variabile `$x` viene creata nel blocco di codice. Il primo `say $x` stampa il suo valore, perché la variabile è visibile dentro il blocco. Il secondo `say $x` fallisce, perché il nome `$x` non esiste fuori dal blocco. Dopo la fine del blocco, il nome non è più conosciuto. Il programma non si compila, e ottieni un errore:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
