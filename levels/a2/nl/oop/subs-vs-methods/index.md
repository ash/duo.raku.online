---
title: Subroutines versus methoden
translations_gpt:
---

{% include menu.html %}

Nu ken je twee manieren om een paar acties samen te voegen. De ene is een _subroutine_. De andere is een _methode_. Ze lijken op elkaar. Maar je gebruikt ze op verschillende manieren.

Een subroutine staat alleen. Hij hoort nergens bij. Je roept hem aan met zijn naam. Je geeft hem alles wat hij nodig heeft als argumenten:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Een methode hoort bij een klasse. Ze is als een functie binnen de klasse. Je roept een methode aan op een object, met een punt. Een object is een waarde van de klasse. De methode kan de gegevens van haar object gebruiken. Daarvoor heeft ze `self` en de accessors van de attributen. Dus geef je deze gegevens niet aan haar mee:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Beide geven hetzelfde getal. Het verschil is waar de gegevens vandaan komen. De subroutine krijgt de straal als argument. De methode leest de straal uit haar object. Dat is het object waarop je haar aanroept.

Hier is een simpele regel. Staat de code alleen en werkt ze alleen met haar argumenten? Gebruik dan een subroutine. Hoort de code bij een object en werkt ze met zijn gegevens? Gebruik dan een methode. Hoort de code bij een klasse, maar niet bij één object? Gebruik dan klassemethoden.

{% include nav.html %}
