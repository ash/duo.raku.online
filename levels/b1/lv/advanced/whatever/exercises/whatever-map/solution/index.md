---
title: 'Risinājums: Whatever ar map'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Atrodiet programmu failā [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Izvade

```
(3 6 9 12)
```

## Komentāri

1. `* * 3` ir Whatever izteiksme, kas kļūst par `WhateverCode` ar vienu argumentu. Tā ir pilnīgi parasta funkcijas vērtība, kas saglabāta mainīgajā `$triple`.

1. Tā ir vienkārši funkcija, tāpēc `map` to pieņem tāpat kā jebkuru bloku. `map` to piemēro katram `1..4` elementam, un tas dod `(3 6 9 12)`.

{% include nav.html %}
