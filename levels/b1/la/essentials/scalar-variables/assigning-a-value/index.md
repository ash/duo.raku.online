---
title: Assignando valorem
---

{% include menu.html %}

Ut novum valorem in continens scalare ponas, utere operatore `=`.

```raku
my $nomen;
$nomen = 'Anna';
```

Nunc variabili uti potes, exempli gratia, ut eam imprimas:

```raku
say $nomen;
```

## Plures variabiles simul

Valores pluribus variabilibus eodem tempore assignare potes. Exempli gratia, sic duo scalaria in una enuntiatione assignas:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Nota quod parentheses in latere sinistro omittere non potes. Sed eas etiam in latere dextro addere potes, ut ambo latera congruant:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
