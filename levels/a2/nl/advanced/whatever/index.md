---
title: De Whatever-ster
translations_gpt:
---

{% include menu.html %}

Misschien heb je `*` al gezien in uitdrukkingen als `* * 2` of `* %% 2`. Je gebruikt ze bij `map` en `grep`. Deze `*` is de _Whatever-ster_. De uitdrukking eromheen maakt een kleine functie. De functie heeft één argument. Raku maakt die meteen, ter plekke. Deze sectie legt uit wat de ster echt is. Ze vergelijkt de ster ook met een blok. En ze laat zien waar de ster op zichzelf gewoon “wat je maar wilt” betekent.

## Een ster maakt een functie

Er kan een `*` in een uitdrukking staan. Dan maakt Raku van de hele uitdrukking een functie. Deze functie is een `WhateverCode`. Daarin staat de ster voor het argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` is een functie. Die neemt één argument en vermenigvuldigt het met twee. Daarom werkt `(1..5).map(* * 2)`. `map` krijgt precies zo'n functie met één argument.

## Whatever of een blok

Een Whatever-uitdrukking is een korte manier om een functie te schrijven. Je kunt dezelfde functie ook als blok schrijven. Deze drie regels doen hetzelfde:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

De Whatever-vorm heeft geen naam voor de parameter. De blokvorm gebruikt de onderwerpsvariabele `$_`. De pijlvorm heeft de naam `$x`. De laatste, `-> $x { ... }`, is zelf een kleine functie. Je leert hem later kennen, in [Anonieme subroutines](/nl/advanced/anonymous-subroutines). Zie hem hier gewoon als een derde vorm van dezelfde functie. Deze functie heeft één argument. Voor een eenvoudige uitdrukking is de ster het kortst. Daarom gebruiken mensen hem vaak bij `map`, `grep` en `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Gebruik een **blok** als de code meer dan één uitdrukking nodig heeft. Een blok is ook beter als een duidelijke naam voor de parameter helpt. Gebruik de **ster** als één korte uitdrukking genoeg is.

## Meer dan één ster

Elke `*` in de uitdrukking is een apart argument. Ze komen op volgorde. Twee sterren maken dus een functie met **twee** argumenten:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Hier is `* + *` een functie met twee argumenten. Die telt ze op. Dat kunnen bijvoorbeeld een totaal tot nu toe en het volgende element zijn.

## De Whatever-ster op zichzelf

De ster op zichzelf, `*`, betekent “wat dan ook”. Hij kan “zoveel als er is” betekenen. Hij kan ook “geen grens” betekenen. Hier zijn twee voorbeelden die vaak voorkomen:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is de lengte van de array, dus *-1 is de laatste index

say (1..*).head(3); # (1 2 3)  — 1..* is een open bereik
```

In `@a[*-1]` is de ster het aantal elementen. In `1..*` betekent de ster “geen bovengrens”. Soms maakt de ster een functie. Soms betekent hij “wat je maar wilt”. Hoe dan ook is hij een van de nuttigste korte vormen van Raku.

{% include nav.html %}
