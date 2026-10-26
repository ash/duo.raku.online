---
title: 'Solvo: Whatever kun map'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Vi povas trovi la fontkodon en la dosiero [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Eligo

```
(3 6 9 12)
```

## Komentoj

1. `* * 3` estas Whatever-esprimo, kiu fariĝas `WhateverCode` kun unu argumento. Ĝi estas tute ordinara funkcia valoro, konservita en `$triple`.

1. Ĝi estas nur funkcio, do `map` akceptas ĝin kiel ajnan blokon. `map` uzas ĝin por ĉiu elemento de `1..4`, kio donas `(3 6 9 12)`.

{% include nav.html %}
