---
title: 'Oplossing: Een Whatever met twee argumenten'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De uitdrukking heeft twee sterren. Dus maakt Raku een `WhateverCode` met twee argumenten. De eerste ster is het eerste argument. De tweede ster is het tweede argument.

1. De aanroep `$join('a', 'b')` zet de waarden op volgorde in de sterren. Dat geeft `'a' ~ '-' ~ 'b'`. Het resultaat is `a-b`.

{% include nav.html %}
