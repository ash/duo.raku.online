---
title: 'Oplossing: Een negatieve fout'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. Door `Negative is Exception` kun je deze klasse werpen. Haar methode `message` maakt de tekst met het attribuut `n`.

1. `check` test haar invoer. Bij een negatief getal werpt ze de eigen exceptie. De exceptie verlaat `check`. Ze gaat naar de `CATCH` in het blok dat `check` aanriep. Daar matcht `when Negative` haar op haar type. Dan drukt de `CATCH` de melding af. Dit is een heel normaal, echt gebruik van eigen excepties. Een programma controleert zijn invoer. Bij een slechte waarde werpt het een exceptie van een eigen type.

1. Waarom staat er een `{ … }` om de aanroep? Een `CATCH`-faser handelt alleen de excepties uit **zijn eigen blok** af. Dat is het blok waar de `CATCH` in staat. Hier bevat het blok de aanroep `check(-5)` samen met zijn `CATCH`. De aanroep kan mislukken, en de `CATCH` is er daarvoor. Dus vangt de `CATCH` de exceptie meteen hier. Daarna gaat het programma verder, vlak na het blok. En als er geen blok is? Dan werkt de `CATCH` voor het hele programma. Hij vangt de exceptie. Maar daarna eindigt het programma gewoon. Er is geen goede plek om verder te gaan.

1. De laatste regel, `Negative.new(n => -10).throw`, toont het omgekeerde geval. Deze regel staat **buiten** het blok. Dus vangt niets de exceptie. De exceptie gaat helemaal naar boven. Dan sterft het programma, of het stopt met een fout. Het drukt de melding af op de standaardfout. Het drukt daar ook een backtrace af. Een backtrace toont waar in de code de fout gebeurde. Daarna eindigt het programma met een exitcode anders dan `0`. Dit gebeurt met elke exceptie die je niet vangt. En daarom had de eerste worp een `CATCH` nodig. Zonder `CATCH` kan het programma niet verder.

{% include nav.html %}
