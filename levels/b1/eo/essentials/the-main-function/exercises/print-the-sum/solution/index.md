---
title: 'Solvo: Presi la sumon'
---

{% include menu.html %}

La programo havas nur unu funkcion `MAIN`. Ĝi prenas du tipitajn argumentojn. Ambaŭ estas faritaj el la komandliniaj argumentoj.

## Kodo

Jen la solvo:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Trovu la programon en la dosiero [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Eligo

Provu malsamajn enirajn nombrojn:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Vi ankaŭ povas ruli la programon sen argumentoj, aŭ kun argumentoj de aliaj tipoj. Vidu, kio tiam okazas. Ni parolos pri traktado de tiaj kazoj en la dua parto de la kurso.

{% include nav.html %}
