---
title: 'Oplossing: Match het type'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Je kunt de broncode vinden in het bestand [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Uitvoer

```
cannot divide by zero
```

## Opmerkingen

1. In Raku mislukt `1 / 0` niet meteen. In plaats daarvan geeft het een luie `Failure`, die wacht tot hij gebruikt wordt. De exceptie wordt pas geworpen als we de waarde *gebruiken*. Hier gebeurt dat als we haar met `say` proberen af te drukken.

1. De geworpen exceptie heeft het ingebouwde type `X::Numeric::DivideByZero`. De tak `when X::Numeric::DivideByZero` matcht precies dat type. Hier match je een specifiek type, in plaats van alles met `default` te vangen. Zo kun je verschillende fouten op verschillende manieren afhandelen.

{% include nav.html %}
