---
title: Lexicalis ambitus
---

{% include menu.html %}

Clausula codicis creat id quod ambitus lexicalis vocatur. Si variabilem in clausula declaras, intra clausulam visibilis est. Sed visibilis non est postquam programma clausulam relinquit. Hic est exemplum:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Variabilis `$x` in clausula codicis creatur. Prima vocatio `say $x` valorem eius imprimit, quia variabilis intra clausulam visibilis est. Secunda vocatio `say $x` deficit, quia nomen `$x` extra clausulam non exstat. Postquam clausula finita est, nomen non cognoscitur. Programma non compilatur, et errorem accipis:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variabilis '$x' non declarata est
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
