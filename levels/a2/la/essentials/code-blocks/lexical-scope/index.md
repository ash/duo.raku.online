---
title: Lexicalis ambitus
---

{% include menu.html %}

Clausula codicis ambitum lexicalem creat. Quid hoc significat? Variabilem in clausula creas. Intra hanc clausulam visibilis est. Deinde programma clausulam relinquit. Postea variabilis non est visibilis. Specta exemplum:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Variabilis `$x` in clausula codicis creatur. Prima vocatio `say $x` intra clausulam est. Variabilis ibi visibilis est. Itaque `say` valorem eius imprimit. Secunda vocatio `say $x` deficit. Extra clausulam nomen `$x` non exstat. Post finem clausulae programma id non novit. Programma non compilatur. Errorem accipis:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variabilis '$x' non declarata est
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
