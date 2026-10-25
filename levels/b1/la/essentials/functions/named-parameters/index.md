---
title: Nominate parametra
---

{% include menu.html %}

Contra [parametros positionales](../positional-parameters), parametri _nominati_ per nomina sua cognoscuntur.

Haec functio duos parametros habet, qui `$from` et `$to` vocantur.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Ut hanc functionem voces, nomina argumentorum scribere debes:

```raku
say distance(from => 30, to => 10); # 20
```

Si argumenta quasi positionalia transmittis, errorem accipis. Exempli gratia, vocatio `distance(30, 10)` errorem facit:

    Troppi positionale transmissi; expectati 0 argumenti sed accepti 2
        in sub distance ad t.raku linea 1
        in block <unit> ad t.raku linea 2

Bona res est quod argumenta nominata quolibet ordine enumerare potes. Duae vocationes sequentes prorsus eaedem sunt:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variabiles transmittentes

Interdum valor quem transmittere vis in variabili servatur. Variabilis etiam idem nomen ac parameter habere potest. Tum syntaxi speciali frui potes, quae laborem scribendi minuit:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Hoc simile est vocationi longiori:

```raku
say distance(from => $from, to => $to); # 20
```

Iterum, ordo hic non refert:

```raku
say distance(:$to, :$from); # 20
```

Si nomina variabilis et parametri diversa sunt, par transmitte. Utere uno ex his modis:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# vel:

say distance(:from($a), :to($b));
```

{% include nav.html %}
