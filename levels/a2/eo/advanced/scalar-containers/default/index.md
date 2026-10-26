---
title: Defaŭltaj valoroj
---

{% include menu.html %}

Foje vi kreas skalaran variablon. Sed vi ankoraŭ ne asignas valoron al ĝi. La ujo tamen tenas valoron. Tio estas ĝia defaŭlta valoro. La defaŭlto dependas de la tipo de la variablo.

Ĉi tiu programo ne uzas Raku en la plej bona maniero. Sed ĝi montras la ideon:

```raku
my $int;
say $int + 5;
```

La eligo havas `5`. Eble vi atendis tion. Eble vi pensis, ke la defaŭlta valoro de `$int` estas `0`. Sed la programo ankaŭ presas averton:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Estas du manieroj forigi ĉi tiun dubon. Vi povas rekte asigni valoron:

```raku
my $int = 0;
say $int + 5; # 5
```

Aŭ vi povas doni defaŭltan valoron per la trajto `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

La defaŭlta valoro ne devas esti nulo. Ĝi povas esti ajna valoro, kiun vi trovas bona. Ekzemple:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
