---
title: 'Oplossing: Te groot'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Je kunt de broncode vinden in het bestand [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Uitvoer

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Opmerkingen

1. `TooBig is Exception` maakt van de klasse een exceptie die je kunt werpen. Ze draagt twee stukken gegevens mee, `value` en `limit`. Haar methode `message` zet ze allebei in de tekst die ze meldt.

1. `.throw` werpt de exceptie op, en `when TooBig` matcht haar op type. De afhandelaar doet meer dan de melding afdrukken. Hij leest het attribuut `limit` direct van het gevangen object, om een behulpzame tip te geven. Daarom is een eigen exceptie beter dan een kale string. De afhandelaar krijgt gegevens met een duidelijke structuur, waarop hij kan reageren.

1. De exceptie wordt **alleen** geworpen als `$value > $limit`. Voor `30` is er geen exceptie, en de body van de lus draait door tot zijn `say`. Die drukt af dat de waarde binnen de limiet ligt. Voor `99` en `60` gebeurt de `throw`, dus wordt die `say` overgeslagen. De `CATCH` handelt de exceptie in plaats daarvan af. De body van de `for` is zelf het blok dat de `CATCH` bewaakt. Dus beëindigt een gevangen exceptie alleen de huidige ronde. Daarna gaat de lus gewoon door naar de volgende waarde.

{% include nav.html %}
