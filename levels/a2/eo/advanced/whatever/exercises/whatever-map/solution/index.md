---
title: 'Solvo: Whatever kun map'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `* * 3` estas Whatever-esprimo. Ĝi fariĝas `WhateverCode` kun unu argumento. Tio estas ordinara funkcia valoro. La programo konservas ĝin en `$triple`.

1. Ĝi estas nur funkcio. Do `map` prenas ĝin kiel ajnan blokon. `map` uzas ĝin por ĉiu elemento de `1..4`. La rezulto estas `(3 6 9 12)`.

{% include nav.html %}
