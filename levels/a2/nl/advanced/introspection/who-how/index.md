---
title: '`WHO` en `HOW`'
---

{% include menu.html %}

Nog twee tools voor introspectie zijn `HOW` en `WHO`. Ze maken de set compleet.

## `HOW`

Achter elke waarde in Raku zit een _metaobject_. Een metaobject is een object. Het weet hoe het type van de waarde werkt. `HOW` is kort voor _Higher Order Workings_. Het geeft het metaobject terug:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Je gebruikt het metaobject al. Misschien heb je het niet gemerkt. De `.^` in `.^name` is een methode-aanroep. Deze aanroep gaat via `HOW`. Deze twee regels doen hetzelfde:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Dus is `$x.^name` alleen een korte manier om `$x.HOW.name($x)` te schrijven. Let op: het object gaat er opnieuw in als argument. Waarom? Alle waarden van een type *delen* één metaobject. De methodes van het metaobject zijn meta-methodes. Een meta-methode moet weten naar welk object je vraagt. De vorm `.^` geeft het object voor je mee. Voor `name` gebruikt Raku dit argument niet. Maar de juiste, algemene manier is om het mee te geven. Sommige meta-methodes gebruiken het wel.

Dit geldt ook voor andere meta-methodes. Een voorbeeld is `.^methods`. Die geeft een lijst van methodes. Je kunt deze methodes op de waarde aanroepen.

## `WHO`

`WHO` geeft het _package_ van een naam terug. Dat is een tabel met de namen, of symbolen, in die namespace:

```raku
say Int.WHO.^name; # Stash
```

Een `Stash` is een hash voor een tabel met symbolen. Hij is handig bij modules. Je kunt er de namen van een module mee opzoeken. We komen erop terug in [het gedeelte over modules](/nl/advanced/module-introspection). Onthoud voor nu alleen dat `WHO` bestaat. Onthoud ook wat het je geeft.

{% include nav.html %}
