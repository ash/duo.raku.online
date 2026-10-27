---
title: 'Oplossing: Bestaat het?'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `.e` controleert of een pad bestaat. De eerste controle gebeurt voordat we het bestand aanmaken, dus geeft ze `False` terug.

1. Daarna maakt `spurt` het bestand `test.txt` aan, en de tweede controle op *hetzelfde* pad geeft `True` terug. Vraag het padobject opnieuw, en je krijgt de huidige toestand van het bestandssysteem.

{% include nav.html %}
