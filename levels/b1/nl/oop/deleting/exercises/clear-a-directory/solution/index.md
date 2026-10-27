---
title: 'Oplossing: Maak een map leeg'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `rmdir` verwijdert alleen lege mappen, dus moeten de bestanden eerst weg. `'cache'.IO.dir` somt de items op, en `.unlink for …` verwijdert ze één voor één.

1. Nu de map leeg is, verwijdert `rmdir` haar. De laatste `.e`-test geeft `False`, wat laat zien dat `cache` weg is.

{% include nav.html %}
