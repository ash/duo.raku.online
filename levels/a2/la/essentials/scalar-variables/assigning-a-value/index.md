---
title: Assignando valorem
---

{% include menu.html %}

Operator `=` novum valorem in continens scalare ponit.

```raku
my $nomen;
$nomen = 'Anna';
```

Nunc variabili uti potes. Exempli gratia, eam imprimere potes:

```raku
say $nomen;
```

## Duae vel plures variabiles simul

Valores pluribus variabilibus simul assignare potes. Exempli gratia, hic una enuntiatio valores duobus scalaribus assignat:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Parentheses in latere sinistro scribere debes. Eas omittere non potes. In latere dextro eas quoque addere potes. Tum ambo latera eadem videntur:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
