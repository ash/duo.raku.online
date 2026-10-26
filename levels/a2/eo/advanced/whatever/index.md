---
title: La Whatever-stelo
translations_gpt:
---

{% include menu.html %}

Eble vi vidis `*` en esprimoj kiel `* * 2` aŭ `* %% 2`. Vi uzas ilin kun `map` kaj `grep`. Ĉi tiu `*` estas la _Whatever-stelo_. La esprimo ĉirkaŭ ĝi faras malgrandan funkcion. La funkcio havas unu argumenton. Raku faras ĝin ĝuste tie, surloke. Ĉi tiu sekcio klarigas, kio la stelo vere estas. Ĝi ankaŭ komparas la stelon kun bloko. Kaj ĝi montras, kie la stelo sola simple signifas “kion ajn vi volas”.

## Stelo kreas funkcion

Esprimo povas enhavi `*`. Tiam Raku faras funkcion el la tuta esprimo. Ĉi tiu funkcio estas `WhateverCode`. En ĝi, la stelo reprezentas la argumenton:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` estas funkcio. Ĝi prenas unu argumenton kaj multiplikas ĝin per du. Tial `(1..5).map(* * 2)` funkcias. `map` ricevas ĝuste tian funkcion kun unu argumento.

## Whatever aŭ bloko

Whatever-esprimo estas mallonga maniero skribi funkcion. Vi ankaŭ povas skribi la saman funkcion kiel blokon. Ĉi tiuj tri linioj faras la samon:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La Whatever-formo ne havas nomon de parametro. La blok-formo uzas la teman variablon `$_`. La pinta formo havas la nomon `$x`. La lasta, `-> $x { ... }`, mem estas malgranda funkcio. Vi lernos pri ĝi poste, en [Anonimaj subrutinoj](/eo/advanced/anonymous-subroutines). Ĉi tie, vidu ĝin simple kiel trian formon de la sama funkcio. Ĉi tiu funkcio havas unu argumenton. Por simpla esprimo, la stelo estas la plej mallonga. Tial oni ofte uzas ĝin kun `map`, `grep` kaj `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Uzu **blokon**, se la kodo bezonas pli ol unu esprimon. Bloko estas ankaŭ pli bona, se klara nomo de parametro helpas. Uzu la **stelon**, se unu mallonga esprimo sufiĉas.

## Pli ol unu stelo

Ĉiu `*` en la esprimo estas aparta argumento. Ili venas laŭ ordo. Do du steloj faras funkcion kun **du** argumentoj:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Ĉi tie, `* + *` estas funkcio kun du argumentoj. Ĝi adicias ilin. Ekzemple, ili povas esti la sumo ĝis nun kaj la sekva elemento.

## La Whatever-stelo sola

La stelo sola, `*`, signifas “kion ajn”. Ĝi povas signifi “tiom, kiom estas”. Ĝi povas signifi ankaŭ “sen limo”. Jen du oftaj uzoj:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * estas la tabellongo, do *-1 estas la lasta indekso

say (1..*).head(3); # (1 2 3)  — 1..* estas senfinpunkta amplekso
```

En `@a[*-1]`, la stelo estas la nombro de elementoj. En `1..*`, la stelo signifas “sen supra limo”. Kelkfoje la stelo faras funkcion. Kelkfoje ĝi signifas “kion ajn vi volas”. Ĉiuokaze, ĝi estas unu el la plej utilaj mallongaj formoj de Raku.

{% include nav.html %}
