---
title: 'Oplossing: Een Whatever met twee argumenten'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Je kunt de broncode vinden in het bestand [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Uitvoer

```
a-b
```

## Opmerkingen

1. De uitdrukking heeft twee sterren, dus Raku bouwt een `WhateverCode` die twee argumenten aanneemt. De eerste ster is het eerste argument, en de tweede ster het tweede.

1. De aanroep `$join('a', 'b')` vult de sterren op volgorde in. Dat geeft `'a' ~ '-' ~ 'b'`, oftewel `a-b`.

{% include nav.html %}
