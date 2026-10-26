---
title: Quiz — Pacchetti
translations_gpt: true
---

{% include menu.html %}

Cosa stampa questo programma?

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

`$x` è creata con `my`. Quindi è lessicale. Non entra mai nel namespace `M`. Per questo il percorso `$M::x` non trova niente. Dà un valore indefinito. Quindi `.defined` è `False`. Solo una variabile `our` si può raggiungere in questo modo.

</div>

{% include nav.html %}
