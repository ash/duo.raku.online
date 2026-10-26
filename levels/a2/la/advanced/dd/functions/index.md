---
title: Signaturas functionum dumping
translations_gpt:
---

{% include menu.html %}

Interdum `dd` sine argumentis intra subroutinam vocas. Tum `dd` signaturam subroutinae imprimit. Haec nomen eius et parametros eius continet, si quos habet. Specta hoc exemplum cum duabus subroutinis:

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

Programma signaturas imprimit. Nullos valores imprimit:

```console
sub f1()
sub f2($x)
```

Hoc valde utile est cum multi-functionibus. Hae sunt plures functiones cum eodem nomine. Hic `dd` tibi variantem ostendit quam programma revera vocat:

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

Quaque vice output variantem nominat quae congruit:

```console
sub g()
sub g($x)
```

{% include nav.html %}
