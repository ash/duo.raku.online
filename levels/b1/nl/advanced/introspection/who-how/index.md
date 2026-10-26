---
title: '`WHO` en `HOW`'
---

{% include menu.html %}

De laatste twee introspectietools in de set zijn `HOW` en `WHO`.

## `HOW`

Achter elke waarde in Raku zit een _metaobject_. Dit is een object dat weet hoe het type van de waarde werkt. `HOW`, een afkorting van _Higher Order Workings_, geeft dit metaobject terug:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Eigenlijk heb je het metaobject al die tijd gebruikt, misschien zonder het te merken. De `.^` in `.^name` is een methode-aanroep die via `HOW` gaat. Deze twee regels doen hetzelfde:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Dus is `$x.^name` gewoon een kortere manier om `$x.HOW.name($x)` te schrijven. Let op: het object wordt opnieuw als argument meegegeven. Dat komt doordat elke waarde van het type hetzelfde metaobject *deelt*. Dus moet een meta-methode horen over welk object je vraagt. De `.^`-vorm doet dit automatisch voor je. Voor `name` wordt het argument eigenlijk genegeerd. Maar het meegeven ervan is de correcte, algemene vorm, want sommige meta-methodes gebruiken het wel.

Hetzelfde geldt voor andere meta-methodes die je kunt tegenkomen, zoals `.^methods`. Die geeft een lijst van de methodes die je op een waarde kunt aanroepen.

## `WHO`

`WHO` geeft het _package_ terug waar een naam bij hoort. Dat is de tabel met symbolen die in die namespace gedefinieerd zijn:

```raku
say Int.WHO.^name; # Stash
```

Een `Stash` is een hash die een symbooltabel bevat. Hij wordt nuttig als je met modules werkt. Dan kun je er de namen mee opzoeken die een module definieert. We komen er later op terug in [het gedeelte over modules](/nl/advanced/module-introspection). Voor nu is het genoeg om te weten dat `WHO` bestaat en wat het teruggeeft.

{% include nav.html %}
