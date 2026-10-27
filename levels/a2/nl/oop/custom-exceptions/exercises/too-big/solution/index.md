---
title: 'Oplossing: Te groot'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `TooBig is Exception` maakt van de klasse een exceptie. Je kunt haar werpen. Ze bevat twee stukken gegevens, `value` en `limit`. Haar methode `message` zet ze allebei in de tekst.

1. `.throw` werpt de exceptie. `when TooBig` matcht haar op haar type. De code in `when TooBig` is de afhandelaar. Hij doet meer dan de melding afdrukken. Hij leest ook het attribuut `limit` van het gevangen object. Daarmee geeft de afhandelaar een nuttige tip. Daarom is een eigen exceptie beter dan een simpele string. De afhandelaar krijgt gegevens in een duidelijke vorm. Hij kan op deze gegevens reageren.

1. De code werpt de exceptie **alleen** als `$value > $limit`. Voor `30` is er geen exceptie. De body van de lus draait tot het einde. De `say` daarin drukt af dat de waarde binnen de limiet ligt. Voor `99` en `60` gebeurt de `throw`. Dus slaat het programma die `say` over. De `CATCH` handelt de exceptie in plaats daarvan af. Hier staat de `CATCH` direct in de body van de `for`-lus. Dus stopt een gevangen exceptie alleen de huidige ronde. Daarna gaat de lus gewoon door naar de volgende waarde.

{% include nav.html %}
