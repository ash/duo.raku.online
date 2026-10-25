---
title: 'Tribus partibus `loop`'
---

{% include menu.html %}

Enuntiatum `loop` in Raku valde simile est ansis traditis in lingua C et in linguis similibus. Tria enuntiata accipit. Primum valorem initialem ponit, et secundum est probatio. Tertium variabilem ansae mutat. Corpus ansae iterum atque iterum currit dum probatio `True` est.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Hic, `++` est operator postfixus, id est, post argumentum suum venit. Ad argumentum 1 addit. Plures operatores sunt in secunda parte cursus.

Programma corpus ansae quinquies exsequitur.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Aliqua enuntiata in capite `loop`, vel etiam omnia, non necessaria sunt. Exempli gratia, hic est idem programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Programmatores Raku `loop` fortasse rarius quam ullam aliam ansam adhibent. Eam invenire potes, exempli gratia, in codice quem instrumentum a C ad Raku convertit. Sed Raku commodiores ansas habet, sicut `for`. Eam mox spectabimus.

{% include nav.html %}
