---
title: 'Solution: Afsluiten over de buitenste'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Je kunt de broncode vinden in het bestand [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Uitvoer

```
Hello, Anna!
```

## Opmerkingen

1. `message` neemt geen argumenten aan. Maar ze kan toch `$name` gebruiken. Een geneste subroutine houdt de lexicale variabelen van de subroutine eromheen vast. Dus is de buitenste `$name` zichtbaar in `message`.

1. Tijdens de aanroep `greet('Anna')` is `$name` gelijk aan `'Anna'`. Dus geeft `message` `Hello, Anna!` terug. De hulpfunctie deelt het bereik van de subroutine eromheen. Dus is een geneste hulpfunctie meer dan alleen een verborgen functie.

{% include nav.html %}
