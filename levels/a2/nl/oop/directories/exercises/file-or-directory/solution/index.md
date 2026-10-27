---
title: 'Oplossing: Bestand of map?'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Je kunt de broncode vinden in het bestand [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Uitvoer

```
True
False
```

## Opmerkingen

1. `.f` controleert of het pad een gewoon bestand is. Dus geeft hij `True` terug voor `a.txt`.

1. `.d` controleert of het pad een map is. We vragen hem naar precies hetzelfde pad. Hij geeft `False` terug. `a.txt` is een bestand, geen map. De twee tests werken als een paar. Ze laten zien of een pad een bestand of een map is.

{% include nav.html %}
