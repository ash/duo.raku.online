---
title: 'Oplossing: Match het type'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. In Raku crasht `1 / 0` niet meteen. Het geeft een luie `Failure`. Een `Failure` is een waarde met een fout erin. Hij wacht tot je hem gebruikt. Raku werpt de exceptie pas als we de waarde *gebruiken*. Hier proberen we de waarde met `say` af te drukken.

1. De geworpen exceptie heeft het ingebouwde type `X::Numeric::DivideByZero`. De tak `when X::Numeric::DivideByZero` matcht precies dit type. Hier match je één bepaald type. Je vangt niet alles met `default`. Zo kun je elke soort fout op een eigen manier afhandelen.

{% include nav.html %}
