---
title: 'Vairākas `MAIN` funkcijas'
---

{% include menu.html %}

Tāpat kā jebkurai citai funkcijai Raku valodā, `MAIN` funkcijai var būt `multi` varianti. Tāpēc programma var dažādi reaģēt uz dažādu ievadi. Ievadē var būt atšķirīgs parametru skaits. Vai arī parametriem var būt dažādi tipi.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Ar vienu argumentu šī programma to dubulto. Ar diviem argumentiem tā tos saskaita:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
