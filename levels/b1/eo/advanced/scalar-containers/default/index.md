---
title: Defaŭltaj valoroj
---

{% include menu.html %}

Foje vi kreas novan skalaran variablon sen tuj asigni ion al ĝi. Eĉ tiam, la ujo enhavas valoron, sian defaŭltan valoron. La ekzakta defaŭlto dependas de la tipo de la variablo.

La sekva programo ne estas la plej bona maniero uzi Raku. Sed ĝi montras la ideon:

```raku
my $int;
say $int + 5;
```

La eligo enhavas `5`. Eble vi atendis tion, se vi pensis, ke la defaŭlta valoro de `$int` estas `0`. Sed la programo ankaŭ presas averton:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Por klarigi, kio estas la valoro, vi povas aŭ mem asigni ĝin:

```raku
my $int = 0;
say $int + 5; # 5
```

Aŭ vi povas difini defaŭltan valoron per la trajto `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

La defaŭlta valoro ne devas esti nulo. Ĝi povas esti ajna valoro, kiun vi opinias bona elekto, ekzemple:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
