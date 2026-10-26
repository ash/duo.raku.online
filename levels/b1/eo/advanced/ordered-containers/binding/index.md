---
title: 'Ligado per `:=`'
translations_gpt:
---

{% include menu.html %}

Ĝis nun, ĉiu variablo, kiun vi kreis, ricevis novan ujon. Atribuo per `=` metis valoron _en_ tiun ujon. Ligado, skribata kiel `:=`, estas alia. Ĝi igas nomon montri al _ekzistanta_ ujo anstataŭ krei novan.

Post ligado, la du nomoj kunhavas la saman ujon. Do ŝanĝo tra unu nomo videblas tra la alia:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Ĉi tie, `$y := $x` ne kopias la valoron `10`. Anstataŭe, `$y` fariĝas alia nomo por ĝuste la sama ujo kiel `$x`. Poste, kiam `$x` ricevas `20`, `$y` ankaŭ donas `20`.

Nun komparu ĝin kun normala atribuo. Ĝi kopias la valoron en apartan ujon:

```raku
my $x = 10;
my $y = $x; # simpla kopio

$x = 20;
say $y; # 10
```

Ligado funkcias ankaŭ kun tabeloj. Ĉi tiu kodo faras el `@alias` alian nomon por `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Ankoraŭ unu detalo. Se vi ligas nomon rekte al literala valoro, neniu ujo estas malantaŭ ĝi. Do la nomo fariĝas nur-legebla:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
