---
title: Quiz — Pacchetti
translations_gpt: true
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`$x` è dichiarata con `my`, quindi è lessicale e non entra mai nel namespace `M`. Per questo il percorso `$M::x` non trova niente, solo un valore indefinito. Quindi `.defined` è `False`. Solo una variabile `our` si potrebbe raggiungere in questo modo.

</div>

{% include nav.html %}
