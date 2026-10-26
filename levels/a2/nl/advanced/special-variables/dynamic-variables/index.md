---
title: Dynamische variabelen
---

{% include menu.html %}

Een _dynamische_ variabele heeft de twigil `*`. Een gewone, lexicale variabele is alleen zichtbaar in zijn eigen blok. Je declareert hem in dat blok. Een dynamische variabele is anders. Raku zoekt hem **via de call stack**. Het kijkt naar de code die de huidige code aanroept. Dan gaat het nog een stap terug, enzovoort. Het maakt niet uit waar de huidige code staat.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

De subroutine `greet` declareert `$*greeting` niet. Hij krijgt hem ook niet als argument. Maar hij kan hem toch zien. De variabele is dynamisch. En de variabele is zichtbaar op de plek waar het programma `greet` aanroept.

Dit voorbeeld werkt ook met een eenvoudige globale scalar variabele `$greeting`. Het volgende voorbeeld laat zien wat er speciaal is aan dynamische variabelen.

Raku zoekt de variabele via de call stack. Dus **overschrijft** een declaratie dichterbij een declaratie verder weg. Dat betekent dat Raku de declaratie dichterbij gebruikt. Dat geldt zolang haar blok loopt:

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

Dezelfde `show` print de eerste keer `outer`. De tweede keer print hij `inner`. Deze keer roept het programma `show` aan vanuit het blok. Dit blok declareert `$*level` opnieuw. Dit is _dynamische scoping_. De ingebouwde `$*OUT`, `$*IN` en `$*ERR` van Raku werken op deze manier. Je kunt bijvoorbeeld `$*OUT` opnieuw declareren in een blok. Dan gaat de uitvoer een tijdje naar een nieuwe plek. Elke routine die je in het blok aanroept, ziet de nieuwe waarde. Dynamische variabelen zijn ideaal voor informatie die de aangeroepen code nodig heeft. Je hoeft deze informatie niet als argument mee te geven.

{% include nav.html %}
