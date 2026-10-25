---
title: 'Tribus partibus `loop`'
---

{% include menu.html %}

Raku enuntiatum `loop` habet. Operatur sicut ansae in lingua C et in linguis similibus. Tria enuntiata habet. Primum variabili ansae valorem initialem dat. Secundum est probatio. Tertium variabilem ansae mutat. Ansa currit dum probatio `True` est.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Hic, `++` est operator. Eum post variabilem scribis. Ad variabilem 1 addit. Secunda pars cursus plures operatores habet.

Corpus ansae quinquies currit.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Aliqua ex tribus enuntiatis in `loop` omittere potes. Etiam omnia omittere potes. Exempli gratia, hic est idem programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

In Raku, homines `loop` non saepe adhibent. Interdum instrumentum codicem C in codicem Raku convertit. In tali codice `loop` videre potes. Raku faciliores ansas habet, sicut `for`. Mox `for` spectamus.

{% include nav.html %}
