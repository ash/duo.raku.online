---
title: 'Oplossing: Afdrukken zonder newline'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Je kunt de broncode vinden in het bestand [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Uitvoer

```
abc
```

## Opmerkingen

1. `$*OUT.print` voegt geen newline toe na zijn tekst, dus blijven `a` en `b` op één regel.

1. `$*OUT.say` schrijft `c` en daarna een newline, en daarmee is de regel `abc` af.

{% include nav.html %}
