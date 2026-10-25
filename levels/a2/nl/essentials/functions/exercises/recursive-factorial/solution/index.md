---
title: 'Solution: Recursieve faculteit'
---

{% include menu.html %}

De faculteit is een heel nuttige oefening. Je kunt deze oefening op veel verschillende manieren oplossen. Deze keer gebruiken we recursie. Dat betekent dat de functie zichzelf aanroept.

## Code 1

Hier is de code van de oplossing. Let op: je moet een voorwaarde controleren. Deze voorwaarde stopt de recursie. Zonder deze voorwaarde gaat de recursie eindeloos door.

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

In code zoals deze is de postfix-vorm van `if` vaak beter. Hier komt `if` na `return`. Zo keert de functie meteen terug. De code wordt duidelijker. De code heeft minder inspringing en minder leestekens.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Vind het bijgewerkte programma in het bestand [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Voorbeeld

Voer het programma uit en controleer het resultaat. Hier is een leuk feitje. Er zitten precies _10!_ seconden in zes weken.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
