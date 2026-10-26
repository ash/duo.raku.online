---
title: Dynamische variabelen
---

{% include menu.html %}

Een _dynamische_ variabele heeft de `*`-twigil. Een lexicale variabele is alleen zichtbaar in het blok waar je hem declareert. Een dynamische variabele is anders: Raku vindt hem door **naar buiten te zoeken via de call stack**. Het doorzoekt de code die de huidige code heeft aangeroepen. Het maakt niet uit waar die code gedefinieerd is.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

De subroutine `greet` declareert `$*greeting` niet en krijgt hem ook niet als argument. Maar hij kan hem toch zien. Dat komt doordat de variabele dynamisch is. Ook werd `greet` aangeroepen vanaf een plek waar de variabele in scope is.

Dit voorbeeld zou ook werken met een eenvoudige globale scalar variabele `$greeting`. Maar het volgende voorbeeld laat zien wat dynamische variabelen speciaal maakt.

Het opzoeken volgt de call stack. Dus **overschrijft** een declaratie dichterbij een declaratie verder weg, zolang haar blok loopt:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

Dezelfde `show` print de eerste keer `outer`. Hij print `inner` als hij wordt aangeroepen vanuit het blok dat `$*level` opnieuw declareerde. Dit is _dynamische scoping_. De ingebouwde `$*OUT`, `$*IN` en `$*ERR` van Raku werken op dezelfde manier. Je kunt uitvoer een tijdje omleiden als je `$*OUT` opnieuw declareert in een blok. Dan ziet elke routine die je in het blok aanroept de nieuwe waarde. Dynamische variabelen zijn ideaal om context door te geven aan aangeroepen code, zonder een expliciet argument.

{% include nav.html %}
