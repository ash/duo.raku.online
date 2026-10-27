---
title: 'Oplossing: Verwijder een bestand'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `spurt` maakt het bestand aan. Dus geeft de eerste `.e`-test `True`.

1. `unlink` verwijdert het bestand. Daarna geeft de tweede `.e`-test `False`. Het bestand is er niet meer. Let op: we gebruiken `.e` en niet `.f`. `.f` test het type van het pad. Hij geeft een fout als het pad niet meer bestaat. Maar `.e` antwoordt gewoon `False`.

{% include nav.html %}
