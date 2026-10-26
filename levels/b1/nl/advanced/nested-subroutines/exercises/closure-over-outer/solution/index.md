---
title: 'Solution: Afsluiten over de buitenste'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `message` neemt geen argumenten aan, maar kan toch `$name` gebruiken. Een geneste subroutine legt de lexicale variabelen vast van de subroutine die haar bevat. Dus is de buitenste `$name` binnen bereik.

1. Als `greet('Anna')` wordt uitgevoerd, is `$name` gelijk aan `'Anna'`. Dus geeft `message` `Hello, Anna!` terug. Geneste hulpfuncties delen het bereik om hen heen. Daardoor zijn ze meer dan alleen verborgen functies.

{% include nav.html %}
