---
title: 'Oplossing: Bestaat het?'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Je kunt de broncode vinden in het bestand [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Uitvoer

```
False
True
```

## Opmerkingen

1. `.e` controleert of een pad bestaat. De eerste controle komt voordat we het bestand aanmaken. Dus geeft ze `False` terug.

1. Daarna maakt `spurt` het bestand `test.txt` aan. De tweede controle is op *hetzelfde* pad. Nu geeft ze `True` terug. Je kunt het padobject opnieuw vragen. Het antwoord toont het bestandssysteem zoals het nu is.

{% include nav.html %}
