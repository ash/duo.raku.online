---
title: De Whatever-ster
translations_gpt:
---

{% include menu.html %}

Misschien heb je `*` al gezien in uitdrukkingen als `* * 2` of `* %% 2`. Die komen voor in aanroepen van `map` en `grep`. Die `*` is de _Whatever-ster_. De uitdrukking eromheen maakt een kleine functie met één argument, meteen ter plekke. Deze sectie legt uit wat de ster echt is en hoe hij zich verhoudt tot een blok. Ook laat ze zien waar de ster op zichzelf gewoon “wat je maar wilt” betekent.

## Een ster maakt een functie

Als een uitdrukking een `*` bevat, maakt Raku van de hele uitdrukking een functie, een `WhateverCode`. In die functie staat de ster voor het argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` is een functie die haar enige argument met twee vermenigvuldigt. Daarom werkt `(1..5).map(* * 2)`. `map` krijgt precies zo'n functie met één argument.

## Whatever vergeleken met een blok

Een Whatever-uitdrukking is een kortere manier om een functie te schrijven. Je zou deze functie ook als blok kunnen schrijven. Deze drie zijn hetzelfde:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

De Whatever-vorm noemt geen parameter. De blokvorm gebruikt de onderwerpsvariabele `$_`, en de pijlvorm noemt `$x`. De laatste, `-> $x { ... }`, is op zichzelf een kleine functie. Je leert hem goed kennen in [Anonieme subroutines](/nl/advanced/anonymous-subroutines). Lees hem hier gewoon als een derde manier om dezelfde functie met één argument te schrijven. Voor een eenvoudige uitdrukking is de ster het kortst. Daarom is hij zo gebruikelijk bij `map`, `grep` en `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Kies een **blok** als de code meer dan één uitdrukking nodig heeft. Een blok is ook goed als een duidelijke parameternaam helpt. Kies de **ster** als een korte uitdrukking genoeg is.

## Meer dan één ster

Elke `*` in de uitdrukking is een eigen argument, op volgorde. Twee sterren maken dus een functie met **twee** argumenten:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hier is `* + *` een functie met twee argumenten, en die telt ze op. Ze kan bijvoorbeeld een lopend totaal en het volgende element optellen.

## De Whatever op zichzelf

Op zichzelf betekent `*` “wat dan ook”: zoveel als er is, of geen grens. Hier zijn twee veelgebruikte toepassingen:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is de lengte van de array, dus *-1 is de laatste index

say (1..*).head(3); # (1 2 3)  — 1..* is een open bereik
```

In `@a[*-1]` staat de ster voor het aantal elementen. In `1..*` betekent hij “geen bovengrens”. De ster kan een functie bouwen of “wat je maar wilt” betekenen. Hoe dan ook is hij een van de nuttigste korte vormen in Raku.

{% include nav.html %}
