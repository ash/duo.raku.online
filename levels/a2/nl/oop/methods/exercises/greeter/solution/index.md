---
title: 'Oplossing: Een omgekeerd woord'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De methode `reversed` haalt de `text` van het object op. Ze gebruikt daarvoor de accessor `$.text`. Dan roept ze daarop de ingebouwde methode `flip` aan. `flip` geeft de string achterstevoren terug.

1. Het programma roept de methode direct aan op het nieuwe `Word`-object. De methode slaat niets op. `reversed` maakt alleen een nieuwe waarde uit het attribuut en geeft die terug.

1. Binnen de klasse kun je de variabele ook direct lezen. Je hebt daarvoor de accessor niet nodig:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
