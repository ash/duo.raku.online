---
title: 'Tribus partibus `loop`'
---

{% include menu.html %}

Enuntiatum `loop` in Raku simile est ansis classicis in lingua C et in linguis similibus. Tria enuntiata accipit. Primum valorem initialem ponit. Secundum est probatio. Tertium variabilem ansae mutat. Corpus ansae iterum atque iterum currit dum probatio `True` est.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Hic, `++` est operator post variabilem. Ad variabilem 1 addit. Plures operatores in secunda parte cursus disces.

Programma corpus ansae quinquies exsequitur.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Aliqua vel etiam omnia enuntiata in capite `loop` omittere potes. Exempli gratia, hic est idem programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Homines `loop` in Raku non valde saepe adhibent. Id videre potes, exempli gratia, in programmatibus quae instrumentum a C ad Raku convertit. Raku faciliores ansas habet, sicut `for`. Brevi `for` spectamus.

{% include nav.html %}
