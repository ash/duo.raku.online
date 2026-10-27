---
title: 'Oplossing: Een negatieve fout'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Je kunt de broncode vinden in het bestand [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Uitvoer

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Opmerkingen

1. `Negative is Exception` maakt het mogelijk om de klasse te werpen. Haar methode `message` bouwt de tekst op uit het attribuut `n`.

1. `check` test haar invoer en werpt de eigen exceptie voor een negatief getal. De exceptie reist uit `check` naar de `CATCH` in het aanroepende blok. Daar matcht `when Negative` haar op type en drukt de melding af. Dit is een heel gewoon, echt gebruik van eigen excepties. De code controleert de invoer en meldt slechte waarden met een exceptie van een eigen type.

1. Waarom staat er een `{ … }` om de aanroep? Een `CATCH`-faser handelt alleen de excepties af die geworpen worden in **het blok waar hij in staat**. Het blok zet de riskante aanroep `check(-5)` samen met de `CATCH` die haar bewaakt. Dus wordt de exceptie meteen hier gevangen, en gaat het programma verder vlak na het blok. Zonder het blok zou de `CATCH` in plaats daarvan het hele programma bewaken. Hij zou de exceptie vangen, maar daarna zou het programma gewoon eindigen. Er zou geen natuurlijke plek zijn om verder te gaan.

1. De laatste `Negative.new(n => -10).throw` toont de andere kant hiervan. Hij staat **buiten** het blok, dus niets vangt hem. De exceptie gaat helemaal naar boven, en het programma sterft. Het schrijft de melding en een backtrace naar de standaardfout. Daarna sluit het af met een status die niet nul is. Dat gebeurt met elke exceptie die je niet vangt. En precies daarom had de eerste worp een `CATCH` nodig om te overleven.

{% include nav.html %}
