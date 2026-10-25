---
title: 'Tribus partibus `loop`'
---

{% include menu.html %}

Enuntiatum `loop` in Raku multum commune habet cum ansis traditis linguae programmandi C et eius cognatarum. Tria enuntiata accipit: initiatorem, probationem, et enuntiatum quod variabilem ansae mutat. Corpus ansae iterum atque iterum currit dum probatio `True` manet.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "The current value of the counter is $c.";
}
```

Hic, `++` est operator postfixus qui argumentum suum per 1 auget. Plures operatores in secunda parte cursus spectabimus.

Programma corpus ansae quinquies exsequitur.

```console
$ raku t.raku
The current value of the counter is 0.
The current value of the counter is 1.
The current value of the counter is 2.
The current value of the counter is 3.
The current value of the counter is 4.
```

Aliqua, vel etiam omnia, enuntiata in capite `loop` omitti possunt. Exempli gratia, hic est idem programma:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "The current value of the counter is $c.";
    $c++;
}
```

## * * *

Ansae `loop` sunt fortasse ansae minime usitatae in Raku. Eas invenire potes, exempli gratia, in codice quem instrumentum automatice a C ad Raku convertit. Sed Raku commodiores ansas habet, sicut `for`, quam brevi spectabimus.

{% include nav.html %}
