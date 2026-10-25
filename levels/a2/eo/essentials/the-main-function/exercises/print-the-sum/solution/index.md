---
title: 'Solvo: Presi la sumon'
---

{% include menu.html %}

La programo havas nur unu funkcion, `MAIN`. Ĝi prenas du argumentojn kun tipoj. Ambaŭ argumentoj ricevas siajn valorojn el la komandlinio.

## Kodo

Jen la solvo:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Trovu la programon en la dosiero [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Eligo

Provu malsamajn nombrojn:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Vi ankaŭ povas ruli la programon sen argumentoj. Aŭ vi povas uzi argumentojn de aliaj tipoj. Vidu, kio okazas. La dua parto de la kurso montras, kiel trakti tiajn kazojn.

{% include nav.html %}
