---
title: 'Solution: De topicvariabele'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Je kunt de broncode vinden in het bestand [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Uitvoer

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Opmerkingen

1. Een `for`-lus zet de topic-variabele `$_` achter elkaar op elk item. Dus draait het blok drie keer, en `$_` is `'apple'`, dan `'fig'`, dan `'cherry'`.

1. Binnen de string voegt `$_` het huidige woord in. De `.chars`-aanroep, kort voor `$_.chars`, geeft de lengte ervan. Beide gebruiken dezelfde topic, dus het aantal klopt altijd met het woord op de regel.

{% include nav.html %}
