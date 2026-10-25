---
title: Nomitaj parametroj
---

{% include menu.html %}

Male al [poziciaj parametroj](../positional-parameters), _nomitaj_ parametroj estas identigataj per siaj nomoj.

Ĉi tiu funkcio havas du parametrojn nomatajn `$from` kaj `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Por voki ĉi tiun funkcion, vi devas skribi la nomojn de la argumentoj:

```raku
say distance(from => 30, to => 10); # 20
```

Se vi pasas la argumentojn kvazaŭ ili estus poziciaj, vi ricevas eraron. Ekzemple, la voko `distance(30, 10)` kaŭzas eraron:

    Tro multaj poziciaj pasis; atendis 0 argumentojn sed ricevis 2
        en sub distance ĉe t.raku linio 1
        en bloko <unit> ĉe t.raku linio 2

La bona afero estas, ke vi povas listigi nomitajn argumentojn en ajna ordo. La sekvaj du vokoj estas tute samaj:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Pasante variablojn

Kelkfoje la valoro, kiun vi volas pasi, estas konservata en variablo. La variablo eble ankaŭ havas la saman nomon kiel la parametro. Tiam vi povas ĝui specialan sintakson, kiu ŝparas tajpadon:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Ĉi tio estas simila al pli longa voko:

```raku
say distance(from => $from, to => $to); # 20
```

Denove, la ordo ne gravas ĉi tie:

```raku
say distance(:$to, :$from); # 20
```

Se la nomoj de la variablo kaj de la parametro estas malsamaj, pasu paron. Uzu unu el ĉi tiuj manieroj:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# aŭ:

say distance(:from($a), :to($b));
```

{% include nav.html %}
