---
title: 'Oplossing: Verdrievoudigen als methode'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Je kunt de broncode vinden in het bestand [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Uitvoer

```
21
```

## Opmerkingen

1. Hier is `triple` een methode. Ze hoort bij het object. Ze werkt met de eigen `n` van het object. Je geeft haar niets mee.

1. Vergelijk het met de subroutine. Daar komen de gegevens als argument binnen. Hier zitten de gegevens in het object. Beide programma's geven `21`.

{% include nav.html %}
