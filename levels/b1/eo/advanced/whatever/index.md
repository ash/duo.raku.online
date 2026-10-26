---
title: La Whatever-stelo
translations_gpt:
---

{% include menu.html %}

Vi eble vidis `*` en esprimoj kiel `* * 2` aŭ `* %% 2`. Ili aperas en vokoj de `map` kaj `grep`. Tiu `*` estas la _Whatever-stelo_. La esprimo ĉirkaŭ ĝi kreas malgrandan funkcion kun unu argumento, ĝuste surloke. Ĉi tiu sekcio klarigas, kio la stelo vere estas kaj kiel ĝi rilatas al bloko. Ĝi ankaŭ montras, kie la stelo sola simple signifas “kion ajn vi volas”.

## Stelo kreas funkcion

Kiam esprimo enhavas `*`, Raku faras el la tuta esprimo funkcion, `WhateverCode`. En ĉi tiu funkcio, la stelo reprezentas la argumenton:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` estas funkcio, kiu multiplikas sian solan argumenton per du. Tial `(1..5).map(* * 2)` funkcias. `map` ricevas ĝuste tian funkcion kun unu argumento.

## Whatever kompare kun bloko

Whatever-esprimo estas pli mallonga maniero skribi funkcion. Vi povus skribi ĉi tiun funkcion ankaŭ kiel blokon. Ĉi tiuj tri estas samaj:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La Whatever-formo ne nomas parametron. La blok-formo uzas la teman variablon `$_`, kaj la pinta formo nomas `$x`. La lasta, `-> $x { ... }`, estas mem malgranda funkcio. Vi lernos ĝin ĝuste en [Anonimaj subrutinoj](/eo/advanced/anonymous-subroutines). Ĉi tie, simple legu ĝin kiel trian manieron skribi la saman funkcion kun unu argumento. Por simpla esprimo, la stelo estas la plej mallonga. Tial ĝi estas tiel ofta kun `map`, `grep` kaj `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Elektu **blokon**, kiam la kodo bezonas pli ol unu esprimon. Bloko estas ankaŭ bona, kiam klara nomo de parametro helpas. Elektu la **stelon**, kiam mallonga esprimo sufiĉas.

## Pli ol unu stelo

Ĉiu `*` en la esprimo estas aparta argumento, laŭ ordo. Do du steloj kreas funkcion kun **du** argumentoj:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Ĉi tie, `* + *` estas funkcio kun du argumentoj, kaj ĝi adicias ilin. Ekzemple, ĝi povas adicii kurantan sumon kaj la sekvan elementon.

## La Whatever sola

Sola, `*` signifas “kion ajn”: tiom, kiom estas, aŭ sen limo. Jen du oftaj uzoj:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * estas la tabellongo, do *-1 estas la lasta indekso

say (1..*).head(3); # (1 2 3)  — 1..* estas senfinpunkta amplekso
```

En `@a[*-1]`, la stelo reprezentas la nombron de elementoj. En `1..*`, ĝi signifas “sen supra limo”. La stelo povas krei funkcion aŭ signifi “kion ajn vi volas”. Ĉiuokaze, ĝi estas unu el la plej utilaj mallongaj formoj en Raku.

{% include nav.html %}
