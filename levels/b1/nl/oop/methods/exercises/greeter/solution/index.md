---
title: 'Oplossing: Een omgekeerd woord'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Je kunt de broncode vinden in het bestand [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Uitvoer

```
ukaR
```

## Opmerkingen

1. De methode `reversed` haalt de eigen `text` van het object op via zijn accessor, `$.text`. Dan roept ze de ingebouwde `flip` daarop aan, die de string omkeert.

1. De methode wordt direct aangeroepen op het nieuwe `Word`-object. Er wordt niets in het object teruggeschreven. `reversed` berekent gewoon een nieuwe waarde uit het attribuut en geeft die terug.

1. Merk op dat je binnen de klasse de accessor niet nodig hebt. Je kunt de variabele direct lezen:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
