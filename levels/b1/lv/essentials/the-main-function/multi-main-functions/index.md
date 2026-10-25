---
title: 'Vairākas `MAIN` funkcijas'
---

{% include menu.html %}

Tāpat kā jebkurai citai funkcijai Raku valodā, `MAIN` funkcijai var būt `multi` varianti. Ar tiem programma var reaģēt uz katru gadījumu savā veidā. Gadījumi var atšķirties ar ievades parametru skaitu vai to tipiem.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Ja ir tikai viens arguments, šī programma to dubulto. Ja ir arī otrs arguments, programma abus saskaita:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
