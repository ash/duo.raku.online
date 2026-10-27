---
title: 'Oplossing: Verwijder een bestand'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Je kunt de broncode vinden in het bestand [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Uitvoer

```
True
False
```

## Opmerkingen

1. `spurt` maakt het bestand aan, dus de eerste `.e`-test geeft `True`.

1. `unlink` verwijdert het bestand. Daarna geeft de tweede `.e`-test `False`, omdat het bestand weg is. Let op dat we `.e` gebruiken en niet `.f`. De typetest `.f` zou een fout geven voor een pad dat niet meer bestaat. Maar `.e` antwoordt gewoon `False`.

{% include nav.html %}
