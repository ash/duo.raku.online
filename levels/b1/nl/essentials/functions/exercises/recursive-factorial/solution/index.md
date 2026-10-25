---
title: 'Solution: Recursieve faculteit'
---

{% include menu.html %}

De faculteit is een heel nuttige oefening, omdat je deze op veel manieren kunt oplossen. Deze keer gebruiken we recursie, wat betekent dat de functie zichzelf aanroept.

## Code 1

Hier is de code van de oplossing. Let op dat je een voorwaarde moet controleren om de recursie te stoppen. Anders gaat de recursie eindeloos door.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Vind het programma in het bestand [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Code 2

In code zoals deze is de postfix-vorm van `if` vaak beter. Daarmee keer je meteen terug uit de functie. Dat maakt de code duidelijker en haalt veel inspringing en leestekens weg.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Vind het bijgewerkte programma in het bestand [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Voorbeeld

Voer het programma uit en controleer het resultaat. Wist je trouwens dat zes weken precies _10!_ seconden hebben?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
