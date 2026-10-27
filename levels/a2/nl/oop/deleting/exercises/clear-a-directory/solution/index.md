---
title: 'Oplossing: Maak een map leeg'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Je kunt de broncode vinden in het bestand [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Uitvoer

```
False
```

## Opmerkingen

1. `rmdir` verwijdert alleen een lege map. Dus verwijdert het programma eerst de bestanden. `'cache'.IO.dir` geeft een lijst van de items. `.unlink for …` verwijdert ze één voor één.

1. Nu is de map leeg, en `rmdir` verwijdert haar. De laatste `.e`-test geeft `False`. Dus is `cache` echt weg.

{% include nav.html %}
