---
title: Nominate parametra
---

{% include menu.html %}

Parametri _nominati_ non sunt sicut [parametri positionales](../positional-parameters). In vocatione nomina eorum scribis.

Haec functio duos parametros accipit. Nomina eorum sunt `$from` et `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Ut functionem voces, nomen cuiusque argumenti scribe:

```raku
say distance(from => 30, to => 10); # 20
```

Noli argumenta sicut positionalia transmittere. Hoc error est. Exempli gratia, vocatio `distance(30, 10)` errorem dat:

    Troppi positionale transmissi; expectati 0 argumenti sed accepti 2
        in sub distance ad t.raku linea 1
        in block <unit> ad t.raku linea 2

Ecce pars bona. Argumenta nominata quolibet ordine scribere potes. Hae duae vocationes prorsus idem faciunt:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variabiles transmittentes

Interdum valorem ex variabili transmittere vis. Variabilis idem nomen ac parameter habet. Tum syntaxis specialis adiuvat. Cum ea minus scribis:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Haec vocatio idem facit ac longior vocatio:

```raku
say distance(from => $from, to => $to); # 20
```

Iterum, ordo non refert:

```raku
say distance(:$to, :$from); # 20
```

Interdum variabilis et parameter diversa nomina habent. Tum par uno ex his modis transmitte:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# vel:

say distance(:from($a), :to($b));
```

{% include nav.html %}
