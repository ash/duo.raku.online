---
title: 'Oplossing: Verdrievoudigen als methode'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als methode hoort `triple` bij het object en gebruikt ze de `n` van het object. Je geeft niets mee.

1. In de versie met een subroutine komen de gegevens binnen als argument. Hier zitten de gegevens juist in het object. Beide versies geven `21`.

{% include nav.html %}
