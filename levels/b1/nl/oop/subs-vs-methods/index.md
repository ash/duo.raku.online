---
title: Subroutines versus methoden
translations_gpt:
---

{% include menu.html %}

Je hebt nu twee manieren om gedrag te ordenen: een _subroutine_ en een _methode_. Ze lijken op elkaar, maar je gebruikt ze op verschillende manieren.

Een subroutine staat op zichzelf. Je roept hem aan bij zijn naam, en je geeft hem alles wat hij nodig heeft als argumenten mee:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Een methode hoort bij een klasse. Je roept haar aan op een object, met een punt. Ze kan de eigen gegevens van het object gebruiken via `self` en de accessors van de attributen. Dus hoef je die gegevens niet mee te geven:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Beide berekenen hetzelfde getal. Het verschil is waar de gegevens vandaan komen. De subroutine krijgt de straal als argument. De methode leest hem uit het object waarop ze is aangeroepen.

Hier is een simpele regel. Gebruik een subroutine voor een losse bewerking die alleen haar argumenten in een resultaat omzet. Gebruik een methode als het gedrag bij een object hoort en zijn gegevens gebruikt. Voor algemene routines die bij de klasse als geheel horen, gebruik je klassemethoden.

{% include nav.html %}
