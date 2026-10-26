---
title: 'Solution: De topicvariabele'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. In een `for`-lus krijgt de topic-variabele `$_` elk item, een voor een. Dus draait het blok drie keer. Eerst is `$_` gelijk aan `'apple'`, dan `'fig'`, dan `'cherry'`.

1. In de string zet `$_` het huidige woord in de tekst. De aanroep `.chars` geeft de lengte van het woord. Het is kort voor `$_.chars`. Beide gebruiken dezelfde topic. Dus past het getal altijd bij het woord op de regel.

{% include nav.html %}
