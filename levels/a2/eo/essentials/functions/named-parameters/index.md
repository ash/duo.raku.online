---
title: Nomitaj parametroj
---

{% include menu.html %}

_Nomitaj_ parametroj ne estas kiel [poziciaj parametroj](../positional-parameters). En voko, vi skribas iliajn nomojn.

Ĉi tiu funkcio prenas du parametrojn. Iliaj nomoj estas `$from` kaj `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Por voki la funkcion, skribu la nomon de ĉiu argumento:

```raku
say distance(from => 30, to => 10); # 20
```

Ne pasu la argumentojn kiel poziciajn. Tio estas eraro. Ekzemple, la voko `distance(30, 10)` donas eraron:

    Tro multaj poziciaj pasis; atendis 0 argumentojn sed ricevis 2
        en sub distance ĉe t.raku linio 1
        en bloko <unit> ĉe t.raku linio 2

Jen la bona parto. Vi povas skribi nomitajn argumentojn en ajna ordo. Ĉi tiuj du vokoj faras ĝuste la saman aferon:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Pasante variablojn

Kelkfoje vi volas pasi valoron el variablo. La variablo havas la saman nomon kiel la parametro. Tiam helpas speciala sintakso. Per ĝi vi tajpas malpli:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Ĉi tiu voko faras la samon kiel pli longa voko:

```raku
say distance(from => $from, to => $to); # 20
```

Denove, la ordo ne gravas:

```raku
say distance(:$to, :$from); # 20
```

Kelkfoje la variablo kaj la parametro havas malsamajn nomojn. Tiam pasu paron en unu el ĉi tiuj manieroj:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# aŭ:

say distance(:from($a), :to($b));
```

{% include nav.html %}
